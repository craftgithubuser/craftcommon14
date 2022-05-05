package com.exercise.collection;

import java.util.*;

public class StackDemo {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		Scanner sc = new Scanner(System.in);
		
		Stack<String> stack = new Stack<String>();
		
		//Adding elements to stack
		stack.push("First");
		stack.push("Second");
		stack.push("Third");
		stack.push("Fourth");
		stack.push("Fifth");
		
		System.out.println("Initial Stack");
		System.out.println(stack);
		
		System.out.println("Enter a string to check? ");
		String usr_string =sc.next();
		
		
		//uncomment the below line to see stack.search value returns
		System.out.println(stack.search(usr_string));
		
		//checking if element exists in stack
		if(stack.search(usr_string) !=-1) {
			System.out.println("Given string: " + usr_string + " exists in the stack");		
		}
		else {
			System.out.println("Given string: " + usr_string + " does not exists in the stack");
		}
		System.out.println("Getting top element from stack: " + stack.peek());
		
//		//removing element from stack
//		stack.pop();
//		stack.pop();
//		System.out.println("Stack after popping two elemens");
//		System.out.println(stack);
//		
//		//popping out elements from stack until there are no elements
//		while(!stack.empty()) {
//			stack.pop();
//			System.out.println("Stack after popping one element : " + stack);
//		}
		

	}

}
