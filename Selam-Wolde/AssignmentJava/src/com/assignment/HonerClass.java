package com.assignment;

import java.util.Scanner;

public class HonerClass {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
Scanner in=new Scanner(System.in);

System.out.println("Enter your grade:");
String grade =in.nextLine();

if(grade.equals("A+"))

	{System.out.println(grade=" Heighest honors");}
	
	else if(grade.equals("A-"))
	
	{System.out.println(grade=" Honors");}
	else if(grade.equals("A"))

	{System.out.println(grade=" Honors");}
	else if (grade.equals("B+"))
	{System.out.println(grade=" Favorable Mention");}
	else if (grade.equals("B-"))
	{System.out.println(grade=" Favorable Mention");}
	 else {System.out.println("Invalid");}
	

	}

}
