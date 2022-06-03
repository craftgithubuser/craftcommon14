package craftjavaexersice;

		import java.util.Scanner;

		public class Exersice1 {

		  public static void main(String[] args) {
		    // TODO Auto-generated method stub

		    // Write the java code that assigns 1 to x if y is greater than 0

		    Scanner KB = new Scanner(System.in);
		    
		     System.out.println("Enter Y value" );
		      int Y = KB.nextInt();
		      
		    if ( Y > 0 ) 
		    { int x = 1;
		    System.out.println("Value of x = " +  x);
		    }
		    else {System.out.println("Invalid");      
		    }
		  }

	}


