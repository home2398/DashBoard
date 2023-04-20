package javaFestival;

import java.util.Scanner;

public class ex13_정수N_N배열 {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);
		int input = sc.nextInt();
		int array[][] = new int[input][input];

		int num = 1;

		
		//정수 input 을 받아 input*input 배열에 저장
		for (int j = 0; j < input; j++) {
			for (int i = 0; i < input; i++) {
				array[i][j] = num++;
			}
		}

		//위 for문에 저장되어 있는 array[i][j] 출력
		for (int j = 0; j < input; j++) {
			for (int i = 0; i < input; i++) {
				System.out.print(array[j][i]);
				System.out.print("\t");
			}
			System.out.println();
		}

	}

}
