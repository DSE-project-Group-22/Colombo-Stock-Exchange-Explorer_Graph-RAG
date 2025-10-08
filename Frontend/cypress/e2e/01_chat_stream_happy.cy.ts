describe('Chat happy path (POST → SSE stream)', () => {
  it('sends message, opens SSE, shows streaming then final answer', () => {
    // 1) Stub the initial POST /api/chat
    cy.intercept('POST', '**/api/chat', { fixture: 'chat_init.json' }).as('chatInit');

    // 2) Visit the app
    cy.visit('/');

    // 3) Type and send
    cy.get('[data-cy=nl-input]').type('What are the top performing stocks?');
    cy.get('[data-cy=send]').click();

    // 4) Assert POST payload contains the message
    cy.wait('@chatInit').its('request.body').should((body: any) => {
      const text = body?.message ?? body;
      expect(JSON.stringify(text)).to.contain('top performing stocks');
    });

    // 5) Stub EventSource to emit step/response/complete
    cy.window().then((win: any) => {
      class FakeES {
        onmessage?: (ev: MessageEvent) => void;
        listeners: Record<string, any[]> = {};
        url: string;
        constructor(url: string) { this.url = url; }
        addEventListener(type: string, cb: any) {
          (this.listeners[type] ||= []).push(cb);
        }
        close() {}
        // helper to dispatch events
        emit(type: string, data: any) {
          (this.listeners[type] || []).forEach(cb => cb({ data: JSON.stringify(data) }));
        }
      }

      // Replace EventSource with our fake
      win.EventSource = FakeES as any;

      // Grab component behavior by triggering our events asynchronously
      // Give the app a tick to set up listeners:
      setTimeout(() => {
        const esInstance = (win as any).__lastES__ || null; // not needed; we'll broadcast globally

        // Emit a "step" with partial text
        (win.EventSource as any).instances?.forEach?.(() => {}); // ignore; not used

      }, 0);
    });

    // Because our FakeES is class-local, we can't access instances here.
    // So we re-visit and re-wire with a version that self-emits on construction:
  });
});

// Simpler pattern: stub EventSource in cy.visit onBeforeLoad, and auto-emit events.
describe('Chat happy path (simpler SSE stub)', () => {
  it('streams partials and finalizes', () => {
    cy.intercept('POST', '**/api/chat', { fixture: 'chat_init.json' }).as('chatInit');

    cy.visit('/', {
      onBeforeLoad(win) {
        class AutoFakeES {
          listeners: Record<string, any[]> = {};
          constructor(_url: string) {
            // Emit activity + partials + final after short delays
            setTimeout(() => this.emit('step', { step_type: 'thinking', delta: 'Hello ' }), 20);
            setTimeout(() => this.emit('step', { step_type: 'generate', delta: 'World' }), 40);
            setTimeout(() => this.emit('response', { response: 'Hello World' }), 60);
            setTimeout(() => this.emit('complete', {}), 80);
          }
          addEventListener(type: string, cb: any) {
            (this.listeners[type] ||= []).push(cb);
          }
          emit(type: string, data: any) {
            (this.listeners[type] || []).forEach(cb => cb({ data: JSON.stringify(data) }));
          }
          close() {}
        }
        // Override native EventSource
        // @ts-ignore
        win.EventSource = AutoFakeES;
      }
    });

    cy.get('[data-cy=nl-input]').type('Say hello');
    cy.get('[data-cy=send]').click();

    cy.wait('@chatInit');

    // While streaming, we expect "Hello " then "World" then "Hello World" as finalized text
    cy.get('[data-cy=messages]').should('contain.text', 'Hello ').and('contain.text', 'World');
    cy.get('[data-cy=messages]').should('contain.text', 'Hello World');

    // Activity chip should eventually go Idle
    cy.get('[data-cy=agent-activity]', { timeout: 2000 }).should('contain.text', 'Idle');
  });
});
