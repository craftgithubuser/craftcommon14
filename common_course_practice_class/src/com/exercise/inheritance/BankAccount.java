package com.exercise.inheritance;

public class BankAccount {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		RegularCustomer regCustomer1 = new RegularCustomer("R-0001","Jamie", "Domestic",10000);
		RegularCustomer regCustomer2 = new RegularCustomer("R-0002", "sefu", "Business", 10000);
		
		EnterpriseCustomer entCustomer1 = new EnterpriseCustomer("E-0001", "James", "SmallScale", 10000);
		EnterpriseCustomer entCustomer2 = new EnterpriseCustomer("E-0002", "Emanuel", "BigScale", 10000);
		
		regCustomer1.showCustomerDetails();
		System.out.println("Final amount: " + regCustomer1.get_final_amount(5, 8));
		System.out.println("\n");
		
		regCustomer2.showCustomerDetails();
		System.out.println("Final amount: " + regCustomer2.get_final_amount(5, 8));
		System.out.println("\n");
		
		entCustomer1.showCustomerDetails();
		System.out.println("Final amount: " + entCustomer1.get_final_amount(5, 8));
		System.out.println("\n");
		
		entCustomer2.showCustomerDetails();
		System.out.println("Final amount: " + entCustomer2.get_final_amount(5, 8));
		System.out.println("\n");
	}

}
