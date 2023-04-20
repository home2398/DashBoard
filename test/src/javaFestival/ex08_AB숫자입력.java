package javaFestival;

import java.util.Scanner;

public class ex08_AB숫자입력 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);

		int num1 = 0;
		int num2 = 0;

		do {

			System.out.print("A 입력 >>");
			num1 = sc.nextInt();
			System.out.print("B 입력 >>");
			num2 = sc.nextInt();

			if (num1 == 0 && num2 == 0) {

				break;
			}

			System.out.println("결과 >>" + (num1 - num2));

		} while (true);

	}

}
