package Challenge;
import java.util.Arrays;
public class Challenge_3 {

	public static void main(String[] args) {
		
		int[] array = new int[] {1,2,3,4,5};
		System.out.println("non reversed array: ");
		for(int i=0; i<array.length; i++) {
			System.out.print(array[i]+" ");
					
		}
		
		System.out.println();
		System.out.println("Reversed array: ");
		for(int i=array.length-1; i>=0; i--) {
			System.out.print(array[i] + " ");
		}
		
		
	}

}
	
		
		
		
			