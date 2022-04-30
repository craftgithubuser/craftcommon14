package com.exercise.collection;

import java.util.*;

public class StudentRecord2 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		ArrayList<Learner> arr = new ArrayList<Learner>();
		
		arr.add(new Learner(1234567, "Python", "US"));
		arr.add(new Learner(1234566, "Java", "Ethiopia"));
		arr.add(new Learner(1234562, "Python for Data Science", "Australia"));
		arr.add(new Learner(1234563, "Python for ML", "US"));
		arr.add(new Learner(1234561, "Data Science using R", "UK"));
		arr.add(new Learner(1234564, "Business Analytics", "Italy"));
		arr.add(new Learner(1234565, "R", "Rome"));
		
		System.out.println("Data before sorting...");
		for(int i=0; i<arr.size(); i++) {
			System.out.println(arr.get(i));
		}
		
//		for(Learner element: arr) {
//			System.out.println(element);
//		}
		
		System.out.println("\n");
		
		//Data after sorting
		Collections.sort(arr, new SortByRollNo());
		System.out.println("Data after sorting...");
		for(int i=0; i<arr.size(); i++) {
			System.out.println(arr.get(i));
		}
		
	}

}

class Learner{
	
	int rollno;
	String courseName;
	String location;
	
	//Learner class constructor
	public Learner(int rollno, String courseName, String location) {
		this.rollno = rollno;
		this.courseName = courseName;
		this.location = location;
	}
	
	public  String toString() {
		return this.rollno + " " + this.courseName + " " + this.location;
	}
	
}

class SortByRollNo implements Comparator<Learner>{

	@Override
	public int compare(Learner a, Learner b) {
		// TODO Auto-generated method stub
		return a.rollno - b.rollno;
	}
	
}