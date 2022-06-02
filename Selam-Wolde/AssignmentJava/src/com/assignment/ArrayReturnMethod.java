package com.assignment;

import java.util.Scanner;
/*
public class ArrayReturnMethod {
	static Scanner sc=new Scanner(System.in);
	System.out.println("How many elements your array will contain: ");
	
	int count= sc.nextInt();
	int[]a=readIntegers(count);
			
	for(int j=0;j<a.length;j++) {
		System.out.println(a[j]);
	}
	



public static int[] readIntegers(int number) {
	int[] myArray=null;
	for(int i=0;i<number;i++) {
	System.out.println("Enter Element : "+i+1);
	 myArray[i]=sc.nextInt();
	}
	return myArray;
}

	
}
*/
////***************




public class ArrayReturnMethod {
	static Scanner sc=new Scanner(System.in);
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		System.out.println("How many elements your array will contain: ");
		
		int count= sc.nextInt();
		int[]a=readIntegers(count);
				
		for(int j=0;j<a.length;j++) {
			System.out.println(a[j]);
		}
		

	}
	
	
	//("null")
	public static int[] readIntegers(int number) {
		int[] myArray = new int[number];
		for(int i=0;i<number;i++) {
		System.out.println("Enter Element : "+i+1);
		 myArray[i]=sc.nextInt();
		}
		return myArray;
	}

}

