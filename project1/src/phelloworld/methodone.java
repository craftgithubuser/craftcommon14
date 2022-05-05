package phelloworld;

public class methodone {
	public void method1(){
		int i=10; //local variable
		System.out.println("the value of i" + i);
		
	}
public void method2(){
	
	int k=20; //local variable
	
	System.out.println("the value of i is not displayed");
	System.out.println("the value of k" + k);

}
public static void main(String[] args){
methodone n1=new methodone();
n1.method1();
n1.method2();
}
}


