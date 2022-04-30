package com.testlambdaexpression;

interface Display {
  
	public int show(int a);
}


public class TestLambdaExpression {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		Display display = (int a) -> a;
		
		System.out.println("Returns value from lambda expression = " + display.show(100));
		
	}

}
 