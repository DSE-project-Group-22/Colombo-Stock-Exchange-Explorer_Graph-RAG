describe('SSE timeout → polling fallback', () => {
  it('falls back to polling and renders the final response', () => {
    cy.intercept('POST', '**/api/chat', { fixture: 'chat_init.json' }).as('chatInit');

    // Intercept the polling GET: /api/chat/poll/abc123
    cy.intercept('GET', '**/api/chat/poll/abc123', { fixture: 'poll_completed.json' }).as('poll');

    cy.visit('/', {
      onBeforeLoad(win) {
        class TimeoutFakeES {
          listeners: Record<string, any[]> = {};
          constructor(_url: string) {
            setTimeout(() => this.emit('timeout', {}), 20);
          }
          addEventListener(type: string, cb: any) {
            (this.listeners[type] ||= []).push(cb);
          }
          emit(type: string, data: any) {
            (this.listeners[type] || []).forEach(cb => cb({ data: JSON.stringify(data) }));
          }
          close() {}
        }
        // @ts-ignore
        win.EventSource = TimeoutFakeES;
      }
    });

    cy.get('[data-cy=nl-input]').type('Trigger timeout');
    cy.get('[data-cy=send]').click();

    cy.wait('@chatInit');
    cy.wait('@poll');

    cy.get('[data-cy=messages]').should('contain.text', 'This is the final answer from polling.');
    cy.get('[data-cy=agent-activity]').should('contain.text', 'Idle');
  });
});
