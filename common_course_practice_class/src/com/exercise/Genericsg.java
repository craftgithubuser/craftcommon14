package com.exercise;

class Test<T>{
	T obj;
	
	Test(T obj){
		this.obj = obj;
	}
	
	public T getObject() {
		return this.obj;
	}
}


public class Genericsg {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		Test<Integer> t1 = new Test<Integer>(15);
		System.out.println(t1.getObject());
		
		Test<String> t2 = new Test<String>("This is an example for Generics example ");
		System.out.println(t2.getObject());

	}

}
