package com.exercise;

import java.util.ArrayList;
import java.util.function.Consumer;

class MyConsumer<T> implements Consumer<T> {

	@Override
	public void accept(T ctask) {
		// TODO Auto-generated method stub

		System.out.println("Working on the result: " + ctask);
		System.out.println("Resulting after adding 5 to given number is: " + ((int) ctask + 5));
	}

}

public class UtilityPackageDemo {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		ArrayList list = new ArrayList<>(5);

		MyConsumer cons = new MyConsumer();

		list.add(100);
		list.add(200);
		list.add(300);
		list.add(400);
		list.add(500);

		list.forEach(cons);

	}

}
