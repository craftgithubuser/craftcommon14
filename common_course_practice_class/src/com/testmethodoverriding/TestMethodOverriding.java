package com.testmethodoverriding;


class Planet{
	//Overridden method
	public void eath() {
		System.out.println("Earth is a planet ");
	}
}

class Pluto extends Planet{
	//Overriding method
	public void earth() {
		System.out.println("Pluto is also a planet");
	}
}

public class TestMethodOverriding {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		Pluto obj = new Pluto();
		obj.earth();

	}

}
