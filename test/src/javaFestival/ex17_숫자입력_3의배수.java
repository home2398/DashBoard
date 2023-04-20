package javaFestival;

import java.util.Scanner;

public class ex17_숫자입력_3의배수 {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);

		int array[] = new int[10];

		int num = 1;

		for (int i = 0; i < array.length; i++) {
			System.out.print(num + "번 째 정수 입력 >>");
			array[i] = sc.nextInt();
			num++;
		}

		System.out.print("3의 배수 : ");
		
		for (int i = 0; i < array.length; i++) {
			if (array[i] % 3 == 0) {
				System.out.print(array[i] + " ");
			}
		}
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	}

}
