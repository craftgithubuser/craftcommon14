package com.io;

import java.io.FileOutputStream;

public class FOStreamExample {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		try {
			
			FileOutputStream f1 = new FileOutputStream("C:\\Users\\Dj\\Documents\\dump file\\Java\\output.txt");
			
			String s1 = "Welcome to learn IO stream";
			
			byte b1[] = s1.getBytes();
			
			f1.write(b1);
			 f1.close();
			 System.out.println("Completed");
		}
		catch(Exception e) {
			System.out.println(e);
		}
		
	}

}
