package com.junitTest;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.Ignore;
import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

class Junitannotationsample {
	
	int x=5, y=10, z;
	
	@BeforeAll
	static void setUpBeforeClass() throws Exception {
	System.out.println("Before all the Classes");	
	}

	@BeforeEach
	void setUp() throws Exception {
		System.out.println("Before each test cases");
	}

	@Test
	void Addition() {
		z= x+y;
		assertEquals(15,z);
		System.out.println("Addition value= " + z);
	}
	
	@Test
	void Multiplication() {
		z= x*y;
		assertEquals(50,z);
		System.out.println("Multiplication value= " + z);
	}
	
	@Ignore
	void IgnoreMessage() {
		String info = "Junit Annotations";
		assertEquals(info,"Junit Annotations");
		System.out.println("This is @Ingore annotation");
	}
	
	@AfterEach
	void tearDown() throws Exception{
		System.out.println("After each test cases");
	}
	
	@AfterAll
	void tearDownAfterClass() throws Exception{
		System.out.println("After all the Classes");
	}
}
