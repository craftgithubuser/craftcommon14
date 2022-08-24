
     /// <reference types = "cypress"/>
import Register from "./pageObject/Registration/Register"
import login from "./pageobject/login/login"
import product from "./pageobject/product/product"
import cart from "./pageobject/cart/cart"

let dt
describe('icraftshop',() => {
 
    before (() =>{
     cy.fixture('icraftshopdata').then(function(data){

      dt = data
      
    })

    })
    it('passes', () => {
  
      cy.visit('http://shop.icraftsoft.net:8095/')
      const R = new Register()

      R.registerButton().eq(1).click()
      R.usernames().type(dt.name)
      R.emails().type(dt.email)
     // R.registerButton().click()
     cy.wait(2000)
     //R.registerButton().click()
     R.submitButton().eq(0).click()
     //R.info().type(dt.info)

      })
      it('login',()=>{
        cy.visit('http://shop.icraftsoft.net:8095/')
        const logs = new login()
        const pr = new product()
        const cr = new cart()
        
        
        const L = new login
        L.logins().type(dt.loginid)
        L.loginButton().eq(0).click()

        cy.wait(2000)
        cy.get('#myTable_filter > label > .form-control').type('FZA')
        cy.wait(2000)
        cy.selectProduct("FZA") 

       for(let index = 0; index < dt.productName.length; index++) {
       cy.selectProduct(dt.productName[index])
    
      } 

      cr.carts();

     })
    })