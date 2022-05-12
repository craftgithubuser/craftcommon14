package com.io;

import java.io.FileInputStream;

public class FIExample1 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		try {
			FileInputStream f1 = new FileInputStream("C:\\Users\\Dj\\Documents\\dump file\\Java\\output.txt");
			
			int x =0;
			
			while((x=f1.read()) != -1) {
				System.out.print((char) x);
			}
			f1.close();		
		}
		catch(Exception e) {
			System.out.println(e);
		}
		
	}

}
