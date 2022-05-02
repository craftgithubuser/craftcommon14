package com.exercise.inheritance;

public class RegularCustomer extends Customer {

	String customerId;
	String customerName;
	String customerType;
	double amount;
	
	
	public RegularCustomer(String customerId, String customerName, String customerType, double amount) {
		super(customerId, customerName, customerType);
		// TODO Auto-generated constructor stub
		
		this.customerId = customerId;
		this.customerName = customerName;
		this.customerType = customerType;
		this.amount = amount;
	}

	@Override
	double get_final_amount(double interest, int year) {
		// TODO Auto-generated method stub
		double simple_interest = this.amount * interest * year;
		double amount = this.amount + simple_interest;
		
		if(this.customerType == "Domestic") {
			//for regular customer type we are discounting 500 $
			return amount -500;
		}
		else if(this.customerType == "Business") {
			//for business customer no discount
			return amount;
		}
		
		// besides the above customer types we will return the amount calculated
		return amount;
		
	}

}
