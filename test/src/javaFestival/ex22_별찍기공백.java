package javaFestival;

public class ex22_별찍기공백 {

	public static void main(String[] args) {

		int array[] = new int[5];

		for (int j = 1; j <= 5; j++) {
			for (int i = 4; i >= j; i--) {
				System.out.print(" ");
			}
			for (int i = 0; i < j; i++) {
				System.out.print("*");
			}
			System.out.println();
		}
	}

}
