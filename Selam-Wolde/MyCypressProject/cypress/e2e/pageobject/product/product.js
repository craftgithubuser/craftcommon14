class product {


  products(){
    let dt;
    cy.fixture("icraftshopdata").then(function(data) {
            dt = data 
      return dt
    })

    for (let index = 0; index < dt.productName.length; index++){
      cy.selectProduct(dt.productName[index])
    }
  }
} 


export default product;