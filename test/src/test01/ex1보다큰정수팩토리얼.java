package test01;

import java.util.Scanner;

public class ex1보다큰정수팩토리얼 {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);
		int sum = 1;

		int input = sc.nextInt();
		System.out.println("입력 : " + input);

		System.out.print("출력 : ");

		for (int i = 1; i <= input; i++) {
			sum*=i; //sum = (sum * i);
		}
		System.out.println(sum);

	}

}
