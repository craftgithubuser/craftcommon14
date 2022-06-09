package learnertest1;

import java.util.Scanner;

public class Daysyweek {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner KB = new Scanner(System.in);
		String dayString1, dayString2, dayString3;
		System.out.println("weekday number;");

		int day = KB.nextInt();
		switch (day) {
		case 1:
			dayString1 = "saturday";
		case 2:
			dayString2 = "sunday";
			break;
		case 3:
			dayString3 = "Monday";
			break;
		case 4:
			dayString1 = "Tuesday";
		case 5:
			dayString2 = "wednesday";
			break;
		default:
			dayString3 = "Invalid day";
			break;

		}
	}

}
