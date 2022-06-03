package craftjavaexersice;

import java.util.Scanner;

public class Exersice5 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner in = new Scanner(System.in);
		System.out.println("Enter your grade: " );
		String grade = in.nextLine();
		
		if(grade =="A+") 
			{System.out.println("Highest honors");}
		
		else if (grade=="A-") 
			{System.out.println("Honors");}
		else if (grade=="A")
		     {System.out.println("Honors");}
		
		else if (grade=="B+")
		{ System.out.println("Favorable Mention");}
		
		else if (grade=="B")
		{  System.out.println("Favorable Mention");}
		else {System.out.println("Honors");}
		 
			
	   
	    	
	    }
	}



	


