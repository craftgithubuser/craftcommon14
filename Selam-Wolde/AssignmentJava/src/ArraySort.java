import java.util.Arrays;
import java.util.Scanner;

//https://www.youtube.com/watch?v=RTvTcpvhcl4


public class ArraySort {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		
		int[]arrayOfIntegers =new int[5];
		
		int lengthOfArray=arrayOfIntegers.length;
		
		
		
		
		Scanner input=new Scanner(System.in);
		int i=0;
		while(lengthOfArray>=1)
		{
			System.out.println("Enter Integer Number For The Array :");
			arrayOfIntegers[i]=input.nextInt();
			lengthOfArray--;
			i++;
		}
		
		System.out.println("Array Before Sorting"+ Arrays.toString(arrayOfIntegers));
		Arrays.sort(arrayOfIntegers);
		System.out.println("Array After Sorting"+ Arrays.toString(arrayOfIntegers));
		
		
		
	}
		

}


