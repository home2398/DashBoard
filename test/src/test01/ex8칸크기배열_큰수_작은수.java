package test01;

import java.util.Random;

public class ex8칸크기배열_큰수_작은수 {

	public static void main(String[] args) {

		Random rd = new Random();
		int array[] = new int[8];

		System.out.print("배열에 있는 모든 값 : ");
		for (int i = 0; i < array.length; i++) {
			array[i] = rd.nextInt(60) + 1;
		}
		int min = array[0];
		int max = array[0];

		for (int i = 0; i < array.length; i++) {
			if (array[i] > max) {
				max = array[i];
			}

			if (min > array[i]) {
				min = array[i];
			}
		}
		for (int j = 0; j < array.length; j++) {
			System.out.print(array[j] + " ");
		}
		System.out.println();
		System.out.println("가장 큰 값 : " + max);
		System.out.println("가장 작은 값 : " + min);



	}

}
