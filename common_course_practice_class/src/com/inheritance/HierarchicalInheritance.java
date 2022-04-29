package com.inheritance;

class parent{
	public void msgA(){
		System.out.println("Method of class A");
	}
}

class Child1 extends parent{
	
}

class Child2 extends parent{
	
}

class Child3 extends parent{
	
}

public class HierarchicalInheritance {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		Child1 obj1 = new Child1();
		Child2 obj2 = new Child2();
		Child3 obj3 = new Child3();
		
		obj1.msgA();
		obj2.msgA();
		obj3.msgA();
		
	}

}
