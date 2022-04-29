package com.exercise.polymorphism;

public class CheckPolymorphism {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		HouseArchitecture ha;
		
		ha = new Villas();
		System.out.println("Average price of the Villas area: "+ String.format("%.0f", ha.getPrice()));
		System.out.println("Banks who can provide loan are: "+ ha.getLoanBank());
		System.out.println("\n");
		
		ha = new FarmHouse();
		System.out.println("Average price of the FarmHouse area: " + String.format("%.0f", ha.getPrice()));
		System.out.println("Banks who can provide loan are: "+ ha.getLoanBank());
		System.out.println("\n");
		
		ha = new Apartments();
		System.out.println("Average price of the Apartments area: "+ String.format("%.0f", ha.getPrice()));
		System.out.println("Banks who can provide loan are: "+ ha.getLoanBank());
		System.out.println("\n");
			
	}

}
