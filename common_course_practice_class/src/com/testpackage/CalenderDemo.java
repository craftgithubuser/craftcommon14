package com.testpackage;

import java.util.Calendar;
import java.util.Date;

public class CalenderDemo {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		Calendar calObj = Calendar.getInstance();

		System.out.println("\n Date and Time Components:");
		System.out.println("Year: " + calObj.get(Calendar.YEAR));
		System.out.println("Month: " + calObj.get(Calendar.MONTH));
		System.out.println("Hour: " + calObj.get(Calendar.HOUR));
		System.out.println("Minute: " + calObj.get(Calendar.MINUTE));
		System.out.println("Second: "+ calObj.get(Calendar.SECOND) );
		
		calObj.add(Calendar.MINUTE, 20);
		
		Date dateObj = calObj.getTime();
		
		System.out.println("\n Date and Time:");
		System.out.println(dateObj);
		

	}

}
