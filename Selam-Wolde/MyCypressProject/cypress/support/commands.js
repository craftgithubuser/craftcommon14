Cypress.Commands.add('selectProduct',(productName)=>{
  cy.get(":nth-child(1) > :nth-child(1) > .thumbnail > .caption > :nth-child(2)")
  .each(($el, i, $list)=>{
      
      if($el.text().includes(productName)){
          cy.get(':nth-child(1) > :nth-child(2) > .thumbnail > .btn-ground > form> [type="submit"]').eq(i).click()
      }
  })

})