package miniElementChallenge;

import java.util.Scanner;


public class MainMethod {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		System.out.println("insert array size");
    	Scanner in= new Scanner(System.in);
    	 int count=in.nextInt();
    	 ChallengeTwo m=new ChallengeTwo();
    	int []inputArray2= m.readInteger(count);
    	 
    	 System.out.println( "the minimum element in the array is  " + m.findMin(inputArray2));
    	 in.close();
	}
	}


