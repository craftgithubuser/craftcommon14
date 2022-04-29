package com.exercise.errorhandling;

public class AgeChecker {
	
	void validate(int age){
		if(age <18) {
			throw new ArithmeticException();
		}
		else {
			System.out.println("Valid");
		}
			
	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		AgeChecker age = new AgeChecker();
		age.validate(17);
		
	}

}
