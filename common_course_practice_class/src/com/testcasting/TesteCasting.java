package com.testcasting;

 class Animal{
	public void eat() {
		System.out.println("animal eats...");
	}
}

 class Dog extends Animal{
	 public void eat() {
		 System.out.println("Dog eats..");
	 }
	 public void bark() {
		 
	 }
 }

public class TesteCasting {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		Dog dog = new Dog();
		dog.eat();
		
//		Animal implicitly = dog; //Implicit casting
		

		
		//the above code can be done explicitly like below //
		Animal implicitly = (Animal) dog;
		
		
	}

}
