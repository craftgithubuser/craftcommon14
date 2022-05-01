package com.exercise.inheritance;

public abstract class Customer {
	
	String customerId;
	String customerName;
	String customerType;
	
	public Customer(String customerId, String customerName, String customerType) {
		this.customerId = customerId;
		this.customerName = customerName;
		this.customerType = customerType;
	}
	
	void showCustomerDetails() {
		System.out.println("Customer ID: " + this.customerId);
		System.out.println("Customer Name " + this.customerName);
		System.out.println("Customer Type: " + this.customerType );
	}
	
	abstract double  get_final_amount(double interest, int year);
	
	

}
