package test01;

import java.util.Arrays;
import java.util.Scanner;

public class ex숫자입력_3의배수출력 {

	public static void main(String[] args) {

		int count = 1;
		int num = 0;
		int array[] = new int[10];

		Scanner sc = new Scanner(System.in);

		for (int i = 0; i < array.length; i++) {
			System.out.print(count + "번 째 정수 입력 >> ");
			array[i] = sc.nextInt();
			count++;
		}
		System.out.print("3의 배수 : ");
		for (int i = 0; i < array.length; i++) {
			if (array[i] % 3 == 0) {
				num = array[i];
				System.out.print(num + " ");
			}
		}

	}

}
