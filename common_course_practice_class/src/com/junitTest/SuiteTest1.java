package com.junitTest;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;

public class SuiteTest1 {
	
	   String message = "Robert";	
	   MessageUtil messageUtil = new MessageUtil(message);
	   
	   @Test
	   public void testPrintMessage() {	
	      System.out.println("Inside testPrintMessage()");    
	      assertEquals(message, messageUtil.printMessage());     
	   }
}
