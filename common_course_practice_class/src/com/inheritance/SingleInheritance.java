package com.inheritance;

class parentClass{
	public void methodA() {
		System.out.println("Parent class method is called");
	}
}

class childClass extends parentClass{
	public void methodB() {
		System.out.println("Child class method is called");
	}
}

public class SingleInheritance {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		childClass obj = new childClass();
		obj.methodA();
		obj.methodB();
	}

}
