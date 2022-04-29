package com.inheritance;

class ParentClass1{
	public void methodX() {
		System.out.println("Parent class method is called");
	}
}

class childClassOne extends ParentClass1{
	public void MethodY() {
		System.out.println("Class Y method");
	}
}

class childClassTwo extends childClassOne{
	public void MethodZ() {
		System.out.println("Class Z method");
	}
}
public class MultiLevelInheritance {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		childClassTwo obj = new childClassTwo();
		obj.methodX();
		obj.MethodY();
		obj.MethodZ();
		
	}

}
