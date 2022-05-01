package com.io;

import java.io.File;

public class FilePropertyExample1 {

	public static void main(String[] a) {
		// TODO Auto-generated method stub
		
		String fileName = a[0];
		
	    File f1 = new File(fileName);
	    
	    System.out.println("Name of the file = " + f1.getName());
	    System.out.println("Path of the file = " + f1.getPath());
	    System.out.println("Absolute path of the file = " + f1.getAbsolutePath());
	    
	    System.out.println("Parent of the file = " + f1.getParent());
	    System.out.println("Is File Exists = " + f1.exists());
	    
	    if(f1.exists()) {
		    System.out.println("Is it Writeable = " + f1.canWrite());
		    System.out.println("Is it readable = " + f1.canRead());
		    
		    System.out.println("Is it a directory = " + f1.isDirectory());
		    System.out.println("File Size in bytes = " + f1.length());
	    }

	}

}
