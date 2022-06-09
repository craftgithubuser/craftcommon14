package learnertest1;

public class Main {
	public static void main(String args[]) {

		try {
			System.out.println("Calculate: " + " " + 1 / 0);

		} catch (ArithmeticException e) {

			System.out.println("Exception: Division by Zero");

		}

	}

}
