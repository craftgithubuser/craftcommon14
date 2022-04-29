package com.thread;

public class MultiThreadPriorityex1 extends Thread {
	
	public void run() {
		System.out.println("Active Thread name =" + Thread.currentThread().getName());
		System.out.println("Acitve Thread priority = " + Thread.currentThread().getPriority());
	}
	
	public static void main(String[] args) {
		
		MultiThreadPriorityex1 mtp1 = new MultiThreadPriorityex1();
		MultiThreadPriorityex1 mtp2 = new MultiThreadPriorityex1();
//		MultiThreadPriorityex1 mtp3 = new MultiThreadPriorityex1();
		
		mtp1.setPriority(Thread.MIN_PRIORITY);
		mtp2.setPriority(Thread.MAX_PRIORITY);
//		mtp3.setPriority(Thread.NORM_PRIORITY);
		
		mtp1.start();
		mtp2.start();
//		mtp3.start();
	}

}
