

describe('goes to Jungle homepage', () => {
  
  it("visits the homepage", () => {
    cy.visit("http://localhost:3000/")
  }) 
  
  it("There is products on the page", () => {
    cy.get(".products article").should("be.visible");
  });
})