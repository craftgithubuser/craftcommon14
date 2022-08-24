class cart{

  carts(){
    cy.wait(2000)
    cy.get('.navbar-nav > :nth-child(1) > .nav-link').click();
  
    cy.wait(2000)
    cy.get('#btn2').click();
    cy.wait(2000) 
  
    //cy.pause()
    cy.get('.btnSubmit').click();
  }
  }
      export default cart;
      