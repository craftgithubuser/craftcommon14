package phelloworld;

public class instancevariableDemo {
	int age=34;// instance variable
	public static double salary;
	public static String dept = "Finance";
	void method1() { 
		int i=10;
		System.out.println("value of i"+i);
		System.out.println("value of age"+age);
	}
	void method2() { 
		int k=10;
		System.out.println("value of k"+k);
		System.out.println("value of age"+age);
	}
	public static void main(String[]args) {
		 instancevariableDemo  n1=new instancevariableDemo() ;
		n1.method1();
		n1.method2();
		n1.age=56;
		n1.method1();
		n1.method2();
		System.out.println();
		
		instancevariableDemo n2 =new instancevariableDemo();
		n2.method1();//age=34
		salary=1000;
		System.out.println("dept :" + dept);
		System.out.println("salary:"+ salary);
	}
}
