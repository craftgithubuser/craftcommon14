package com.icraft;

public class Calculator {
	
	public void addMethod(int a, int b) {
		int result = a+b;
		System.out.println("Addition of the two numbers: " + result); //20
	}
	
	public void subMethod(int a, int b) {
		int result = a-b;
		System.out.println("subtraction of the two numbers: " + result);//10
	}
	
	public void multiMethod(int a, int b) {
		int result = a*b;
		System.out.println("Multiplaction of the two numbers: " + result);
	}
	
	public void devMethod(int a, int b) {
		int result = a/b;
		System.out.println("Division of the two numbers: " + result);
	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub

          Calculator cal = new Calculator();
          cal.addMethod(10, 10);
          cal.subMethod(20, 10);
          cal.multiMethod(10, 10);
          cal.devMethod(10, 5);
			
	}

}
