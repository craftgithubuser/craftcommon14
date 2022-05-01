package com.exercise.polymorphism;

public class Apartments extends HouseArchitecture{

	@Override
	float getPrice() {
		// TODO Auto-generated method stub
		return 8000000;
	}
	
	@Override
	String getLoanBank() {
		return "Dashen Bank, Awash Bank, Coop Bank, CBE Bank, Abisinya Bank, Oromia Bank";
	}

}
