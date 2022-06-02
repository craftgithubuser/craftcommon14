package com.challenge;

import java.util.Scanner;

public class ChallengeOne {
	  static int size;
	 
    public int[] getInteger()
    {
    	//int size;
    	System.out.println("insert array size");
    	Scanner in= new Scanner(System.in);
       
        size =in.nextInt();
        int inputArray[]=new int[size];
        
        System.out.println("insert array with  " + size + "  element");
      
         for(int i=0;i<size;i++) { 
        	 System.out.println("insert array element "+i);
        	 inputArray[i] =in.nextInt(); 
        	  	 }
         in.close();
       
         return inputArray;
    	 }
    public void printarray(int[] input) {
    	
    	 System.out.println("the  array  : ");
         System.out.print( "{ ");
        for(int x:input) {
        	System.out.print(x + "  ");
        	
        }
        System.out.println( "}");
          	  }
    
    public int[] sortInteger(int[] x) { 
    	int[] sortedArray=x;
    	
    	for (int i = 0; i < sortedArray.length; i++) {     
        for (int j = i+1; j < sortedArray.length; j++) {     
            if(sortedArray[i] < sortedArray[j]) {    
               int temp = sortedArray[i];    
               sortedArray[i] = sortedArray[j];    
               sortedArray[j] = temp;    
            }     
         }     
     }
    	return sortedArray;
    }
	
} 
    

