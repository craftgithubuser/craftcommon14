package javaexame1;

import java.util.Scanner;

public class exame2 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		 //Suppose that score is a variable of type double.

	    // Write the java code that increases the score by 5 marks if score is between 80 and 90

	     Scanner S = new Scanner(System.in);

	     System.out.println("Enter Score " );

	   double Score = S.nextDouble();

	  if (Score > 80 && Score < 90) {

	    Score = Score += 5;

	    System.out.println("Score : " + Score );

	   }  

	  else {}

	  }

	
		
		
	}


