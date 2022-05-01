package com.thread;

public class ThreadSample1 extends Thread {
	
	public void run() {
		System.out.println("Thread is activated");
	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		ThreadSample1 ts1 = new ThreadSample1();
		 ts1.start();
		 System.out.println("qwer");
	}

}
