package test01;

import java.util.Scanner;

public class ex행개수별찍기 {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);
		System.out.print("행 개수 : ");
		int input = sc.nextInt();

		for (int j = 1; j <= input; j++) {
			for (int i = 0; i < j; i++) {
				System.out.print("*");
			}
			System.out.println();
		}

//		System.out.print("*");
//		System.out.println();
//		System.out.print("*");
//		System.out.print("*");
//		System.out.println();
//		System.out.print("*");
//		System.out.print("*");
//		System.out.print("*");
//		System.out.println();
//		System.out.print("*");
//		System.out.print("*");
//		System.out.print("*");
//		System.out.print("*");

	}

}
