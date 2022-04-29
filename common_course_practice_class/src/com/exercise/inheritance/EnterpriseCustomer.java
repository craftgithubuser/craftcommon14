package com.exercise.inheritance;

public class EnterpriseCustomer extends Customer {

	String customerId;
	String customerName;
	String customerType;
	double amount;
	
	
	public EnterpriseCustomer(String customerId, String customerName, String customerType, double amount) {
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
		
		//flat 500 $ discount for enterpise customers
		amount = amount - 500;
		if(this.customerType == "SmallScale") {
			//for SmallScale customer type we are discounting 100 $
			return amount -100;
		}
		else if(this.customerType == "BigScale") {
			//for BigScale customer no discount
			return amount;
		}
		
		// besides the above customer types we will return the amount calculated
		return amount;
	}

}
