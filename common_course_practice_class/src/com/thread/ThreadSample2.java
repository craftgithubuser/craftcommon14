package com.thread;

public class ThreadSample2 implements Runnable {

	@Override
	public void run() {
		// TODO Auto-generated method stub
		System.out.println("Thread is Activated");

	}
	
	public static void main(String[] args) {

		ThreadSample2 ts2 = new ThreadSample2();
		Thread th = new Thread(ts2);
		th.start();
		 System.out.println("qwer");
			
	}

}
