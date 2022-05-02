package com.exercise.junitTest;

import java.util.*;

public class StudentMark {
	public static void main(String[] args) {
		
		Scanner in = new Scanner(System.in);
		float phyics_marks, chemistry_marks, maths_marks;
		
		//Reading marks from the user
	    System.out.println("enter physics mark out of 100");
	    phyics_marks= in.nextFloat();
	    
	    System.out.println("enter chemistry mark out of 100");
	    chemistry_marks =  in.nextFloat();
	    
	    System.out.println("enter maths mark out of 100");
	    maths_marks =  in.nextFloat();
	    
	    //getting total marks here
	    float total_marks = getTotallMarks(phyics_marks, chemistry_marks, maths_marks);
	    System.out.println("Total marks of the students: out of 300 is: " + total_marks);
	    
	    float percentage_marks = getPercentage(total_marks);
	    System.out.println("Percentage of marks obtained: " + String.format("%.2f", percentage_marks));
	    
	    String grade = getGrade(percentage_marks);
	    System.out.println("Grade of Student is : " + grade);
	    
	}

	public static String getGrade(float percentage_marks) {
		// TODO Auto-generated method stub
		
		if(percentage_marks >= 80) {
			return "A+";
		}
		else if(percentage_marks >= 60 && percentage_marks <= 79) {
			return "A";
		}
		else if(percentage_marks >50 && percentage_marks <=59) {
			return "B";
		}
		else {
			return "C";
		}
	}

	public static float getPercentage(float total_marks) {
		// TODO Auto-generated method stub
		
		float percentage = (total_marks/300) * 100;
		if(total_marks > 300)
			throw new ArithmeticException("Invalid total marks error");
		else if(total_marks<0)
			throw new ArithmeticException("Invalid total marks error"); 
		
		return percentage;
	}

	public static float getTotallMarks(float phyics_marks, float chemistry_marks, float maths_marks) {
		// TODO Auto-generated method stub
		
		
		float total_marks =  phyics_marks + chemistry_marks + maths_marks;
		
		if(phyics_marks>100 || chemistry_marks>100 || maths_marks>100 )
			throw new ArithmeticException("Invalid Mark Error");
		else if(phyics_marks<0 || chemistry_marks<0 || maths_marks<0 )
			throw new ArithmeticException("Invalid Mark Error");

				
		
		return total_marks;
	}

}
