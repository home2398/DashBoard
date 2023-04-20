package javaFestival;

import java.util.Random;

public class ex11_배열_큰수_작은수 {

	public static void main(String[] args) {

		int array[] = new int[8];
		int max = 0;
		int min = 0;

		Random rd = new Random();

		System.out.print("배열에 있는 모든 값 : ");
		for (int i = 0; i < array.length; i++) {
			array[i] = rd.nextInt(55) + 1;
		}
//		max = array[0];
//		min = array[0];

		min=array[0];
		for (int i = 0; i < array.length; i++) {
			if (array[i] > max) {
				max = array[i];
			}
			 if (array[i] < min) {
				min = array[i];
			}
			System.out.print(array[i] + " ");
		}
		System.out.println();
		System.out.println("가장 큰 값 : " + max);
		System.out.println("가장 작은 값 : " + min);

	}

}
