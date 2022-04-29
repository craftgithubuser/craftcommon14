package com.exercise.collection;

import java.util.*;


public class StudentRecord implements Comparable {
	
	String name;
	int rollNumber;
	String address;
	
	//constructor to initialize student name, roll number and address
	public StudentRecord(String name, int rollNumber, String address) {

		this.name = name;
		this.rollNumber = rollNumber;
		this.address = address;
	}

	// formatting roll number, name and address
	public String toString() {
		return this.rollNumber +  " " + this.name + " " + this.address;
	}
			
	
	public static void main(String[] args) {
		
		List stud = new ArrayList();
		
		//adding student records here 
		stud.add(new StudentRecord("Lahari", 27922125,"Iteya"));
		stud.add(new StudentRecord("Soresa", 27922124,"Iteya"));
		stud.add(new StudentRecord("Johny", 27922123,"Adama"));
		stud.add(new StudentRecord("jamie", 27922126,"Asala"));
		stud.add(new StudentRecord("james", 27922127,"Addis Ababa"));
		stud.add(new StudentRecord("J.Kamel", 27922122,"NYC"));
		stud.add(new StudentRecord("Abdul", 27922123,"Jimma"));
		stud.add(new StudentRecord("Basit", 27922121,"Jimma"));
		
		//sorting the student data
		Collections.sort(stud);
//		System.out.println("The list after sorting: ");
//		System.out.println(stud);
		
		//sorting by roll number
		System.out.println("After sorting by roll number\n");

		for(int i=0; i<stud.size(); i++) {
			System.out.println(stud.get(i));
		}
		
	}

	@Override
	public int compareTo(Object o) {
		// TODO Auto-generated method stub
		return this.rollNumber -((StudentRecord)o).rollNumber;
	}

}
