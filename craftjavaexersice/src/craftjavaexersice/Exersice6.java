package craftjavaexersice;

import java.util.Scanner;
public class Exersice6 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
//	    Convert the following switch statement into if-else statements:


	    //Convert the following switch statement into if-else statements:
	    
	    
	  Scanner KB = new Scanner(System.in);
	   String dayString1, dayString2, dayString3;
	   System.out.println("Enter day number" );
	   int day = KB.nextInt();
	    if(day == 1 ) 
	    System.out.println(dayString1 ="Saturday");
	    
	    else if(day == 2)
	    System.out.println(dayString2 = "Sunday");
	    
	    else if(day == 3) 
	    System.out.println( dayString3 = "Monday");
	    
	    else if (day == 4) 
	    System.out.println(dayString1 = "Tuesday");
	    
	    else if (day == 5 ) 
	    System.out.println(dayString2 = "Wednesday");
	    
	    else //{ Invalid day};
	    System.out.println("Invalid day");
	    
	  

//	      switch (day) {
//	      case 1:
//	        dayString1 = "Saturday";
//	      case 2:
//	        dayString2 = "Sunday";
//	        break;
//	      case 3:
//	        dayString3 = "Monday";
//	        break;
//	      case 4:
//	        dayString1 = "Tuesday";
//	      case 5:
//	        dayString2 = "Wednesday";
//	        break;
//	      default:
//	        dayString3 = "Invalid day";
//	        break;
//	      }}}
	}

}
