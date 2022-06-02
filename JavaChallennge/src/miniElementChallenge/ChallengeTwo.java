package miniElementChallenge;

import java.util.*;

public class ChallengeTwo {
	public int[] readInteger(int size) {
 
		int inputArray[]=new int[size];
		Scanner in= new Scanner(System.in);
        System.out.println("insert array with  " + size + "  element");
      
         for(int i=0;i<size;i++) { 
        	 System.out.println("insert array element "+i);
        	 inputArray[i] =in.nextInt(); 
        	  	 }
         in.close();
       
         return inputArray;
	}
	public int findMin(int[]x) {
		 
		int res = x[0];
        for (int i = 1; i < x.length; i++)
            res =Math.min(res, x[i]);
        return res;
	}


		
}

