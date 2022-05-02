package com.junitTest;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;

public class SuiteTest2 {

	   String message = "Robert";	
	   MessageUtil messageUtil = new MessageUtil(message);
	 
	   @Test
	   public void testSalutationMessage() {
	      System.out.println("Inside testSalutationMessage()");
	      message = "Hi!" + "Robert";
	      assertEquals(message,messageUtil.salutationMessage());
	   }
}
