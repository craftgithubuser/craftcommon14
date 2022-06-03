package craftjavaexersice;

import java.util.Scanner;

public class Exersice3 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		  // Write a java code that prints true if x is an odd number and positive else prints false
	    
	    Scanner in = new Scanner(System.in);
	    System.out.println("Enter your x value");
	    
	  int x = in.nextInt();
	  
	  if (x%2 == 1 && x>0)
	  {
	    System.out.println( "True");
	  }
	  else {
	    System.out.println("False");
	  
	  }
	    
	        }
	
	}


