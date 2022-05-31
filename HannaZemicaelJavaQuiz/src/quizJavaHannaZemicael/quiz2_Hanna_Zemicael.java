package quizJavaHannaZemicael;

import java.util.Scanner;

public class quiz2_Hanna_Zemicael {

	//public static Object main1(String[] args) {
		// TODO Auto-generated method stub

		private static Scanner scanner = new Scanner(System.in);

	    public static void main(String[] args) {
	        System.out.println("Enter count:");
	        int count = scanner.nextInt();
	        scanner.nextLine();
	        int[] returnedArray = readIntegers(count);
	        System.out.println("Min: " + findMin(returnedArray));
	    }
	    private static int[] readIntegers(int count) { //parameter called count created
	        int[] array = new int[count];
	        for (int i = 0; i < array.length; i++) {
	            System.out.println("Enter a number:");
	            int number = scanner.nextInt();
	            scanner.nextLine();
	            array[i] = number;
	        }
	        return array;
	    }
	    private static int findMin(int[] array) {
	        int min = Integer.MAX_VALUE;
	        for (int i = 0; i < array.length; i++) {
	            int value = array[i];
	            if (value < min) {
	                min = value;
	            }
	        }
	        return min;
	    }
	}

