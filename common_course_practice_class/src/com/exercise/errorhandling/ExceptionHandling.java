package com.exercise.errorhandling;

public class ExceptionHandling {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		System.out.println("Exception Handling Demo program starts here...");
		
		try {
//			uncommenting below will throw ArithmeticException
			int num = 28/0;
			
			int arr[] = {10,20,30,40,60,70};
//			uncommenting below will throw ArrayIndexOutOfBoundsException
//			System.out.println(arr[10]);
			String str = null;
//			uncommenting below line will throw NullPointerException
			System.out.println(str.length());
			
			
		}
		catch(Exception e) {
			
		}
//		catch(ArithmeticException e) {
//			
//			System.out.println("Denominator should not be zero while dividing number...");
//			System.out.println("Error: " + e);
//		}
//		catch(ArrayIndexOutOfBoundsException e) {
//			System.out.println("User is trying to access index location outside the array boundary");
//			System.out.println("Error: " + e);
//			
//		}
//		catch(NullPointerException e) {
//			System.out.println("User is trying to perform operation on null value");
//			System.out.println("Error: " + e);
//			
//		}
		
		finally {
			System.out.println("This block always executes...");
		}
		System.out.println("Exception handling Demo program ends here....");
		
	}
}
