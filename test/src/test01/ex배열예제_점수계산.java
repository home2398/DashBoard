package test01;

import java.util.Arrays;
import java.util.Scanner;

public class ex배열예제_점수계산 {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);

		int array[] = new int[5];
		int input = 0;
		int count = 1;
		double sum = 0;
		int max = 0;
		int min = 0;
		double avg = 0;

		for (int i = 0; i < array.length; i++) {
			System.out.print(count + "번째 입력 >> ");
			array[i] = sc.nextInt();
			count++;
			sum = sum + array[i];
			avg = sum / array.length;
		}
		for (int i = 0; i < array.length; i++) {
			if (max < array[i]) {
				max = array[i];
			}
			if (0 == i) {
				min = array[i];
			}
			if (min > array[i]) {
				min = array[i];

			}
		}


		System.out.print("입력된 점수 : " + Arrays.toString(array));
		System.out.println();
		System.out.print("최고 점수 : " + max);
		System.out.println();
		System.out.print("최저 점수 : " + min);
		System.out.println();
		System.out.print("총합 : " + sum);
		System.out.println();
		System.out.print("평균 : " + avg);
		System.out.println();

		// for(int i=0; i<5; i++) {
//	      
		// }

		// for(int i=0; i<=array.length; i++) {
//	      System.out.print(i+"번째 입력 >> ");
//	       input = sc.nextInt();
//	       
//	       array[i]=input;
		//
//	       System.out.print(Arrays.toString(array));
		// }
		//

		// System.out.print("2번째 입력 >> ");
//	    input = sc.nextInt();
		// System.out.print("3번째 입력 >> ");
//	    input = sc.nextInt();
		// System.out.print("4번째 입력 >> ");
//	    input = sc.nextInt();
		// System.out.print("5번째 입력 >> ");
//	    input = sc.nextInt();

	}

}
