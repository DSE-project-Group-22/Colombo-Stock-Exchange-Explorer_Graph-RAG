describe('Chat POST error', () => {
  it('shows an error message and returns to Idle', () => {
    cy.intercept('POST', '**/api/chat', { statusCode: 500, body: { message: 'Server error' } }).as('chatInitErr');

    cy.visit('/');
    cy.get('[data-cy=nl-input]').type('Hi');
    cy.get('[data-cy=send]').click();

    cy.wait('@chatInitErr');

    cy.get('[data-cy=messages]').should('contain.text', 'Sorry, there was an error processing your request.');
    cy.get('[data-cy=agent-activity]').should('contain.text', 'Idle');
  });
});
