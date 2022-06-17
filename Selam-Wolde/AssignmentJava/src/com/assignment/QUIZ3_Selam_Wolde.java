package com.assignment;

public class QUIZ3_Selam_Wolde {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int[] array = new int[] {1,2,3,4,5};
		System.out.println("non reversed array: ");
		for(int i=0; i<array.length; i++) {
		  System.out.print(array[i]+" ");
		      
		}

		System.out.println();
		System.out.println("Reversed array: ");
		for(int i=array.length-1; i>=0; i--) {
		  System.out.print(array[i] + " ");
		}
	}

}


