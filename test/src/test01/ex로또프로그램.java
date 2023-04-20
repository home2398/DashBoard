package test01;

import java.util.Random;

public class ex로또프로그램 {

	public static void main(String[] args) {

		Random rd = new Random();
		int array[] = new int[6];

		// 번호 생성
		for (int i = 0; i < 6; i++) {
			array[i] = rd.nextInt(45) + 1;

			// 중복 번호 제거
			for (int j = 0; j < i; j++) {
				if (array[i] == array[j]) {
					i--;
					break;
				}
			}

		}
		for (int i = 0; i < array.length; i++) {

			System.out.print("행운의숫자 : " + array[i]);
			System.out.println();
		}

//		for(int i=1; i<array.length; i++) {
//		if(array[1]==array[0]) {
//			array[1]=rd.nextInt(45)+1;
//		}
//		if(array[1]==array[1]) {
//			array[1]=rd.nextInt(45)+1;
//		}
//		if(array[2]==array[0]) {
//			array[2]=rd.nextInt(45)+1;
//		}
//		if(array[2]==array[1]) {
//			array[2]=rd.nextInt(45)+1;
//		}
//		if(array[2]==array[2]) {
//			array[2]=rd.nextInt(45)+1;
//		}
//		if(array[3]==array[0]) {
//			array[3]=rd.nextInt(45)+1;
//		}
//		if(array[3]==array[1]) {
//			array[3]=rd.nextInt(45)+1;
//		}
//		if(array[3]==array[2]) {
//			array[3]=rd.nextInt(45)+1;
//		}	
//		if(array[3]==array[3]) {
//			array[3]=rd.nextInt(45)+1;
//		}	
//		if(array[4]==array[0]) {
//			array[4]=rd.nextInt(45)+1;
//		}
//		if(array[4]==array[1]) {
//			array[4]=rd.nextInt(45)+1;
//		}
//		if(array[4]==array[2]) {
//			array[4]=rd.nextInt(45)+1;
//		}	
//		if(array[4]==array[3]) {
//			array[4]=rd.nextInt(45)+1;
//		}	
//		if(array[4]==array[4]) {
//			array[4]=rd.nextInt(45)+1;
//		}	
//		if(array[5]==array[0]) {
//			array[5]=rd.nextInt(45)+1;
//		}
//		if(array[5]==array[1]) {
//			array[5]=rd.nextInt(45)+1;
//		}
//		if(array[5]==array[2]) {
//			array[5]=rd.nextInt(45)+1;
//		}	
//		if(array[5]==array[3]) {
//			array[5]=rd.nextInt(45)+1;
//		}	
//		if(array[5]==array[4]) {
//			array[5]=rd.nextInt(45)+1;
//		}	
//		if(array[5]==array[5]) {
//			array[5]=rd.nextInt(45)+1;
//		}	

//		array[1] = rd.nextInt(45) + 1;
//		array[2] = rd.nextInt(45) + 1;
//		array[3] = rd.nextInt(45) + 1;
//		array[4] = rd.nextInt(45) + 1;
//		array[5] = rd.nextInt(45) + 1;

//		for (int i = 1; i < 2; i++) {
//			System.out.print("행운의숫자 : " + array[1]);
//			System.out.println();
//		}
//		for (int i = 2; i < 3; i++) {
//			System.out.print("행운의숫자 : " + array[2]);
//			System.out.println();
//		}
//		for (int i = 3; i < 4; i++) {
//			System.out.print("행운의숫자 : " + array[3]);
//			System.out.println();
//		}
//		for (int i = 4; i < 5; i++) {
//			System.out.print("행운의숫자 : " + array[4]);
//			System.out.println();
//		}
//		for (int i = 5; i < 6; i++) {
//			System.out.print("행운의숫자 : " + array[5]);
//			System.out.println();
//		}
//		System.out.print("행운의숫자 : "+array[1]);
//		System.out.println();
//		System.out.print("행운의숫자 : "+array[2]);
//		System.out.println();
//		System.out.print("행운의숫자 : "+array[3]);
//		System.out.println();
//		System.out.print("행운의숫자 : "+array[4]);
//		System.out.println();
//		System.out.print("행운의숫자 : "+array[5]);
//		System.out.println();
//		

	}

}
