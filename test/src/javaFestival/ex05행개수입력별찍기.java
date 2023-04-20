package javaFestival;

import java.util.Scanner;

public class ex05행개수입력별찍기 {

	public static void main(String[] args) {
		
		
		Scanner sc = new Scanner(System.in);
		System.out.print("행 개수 : ");
		int input = sc.nextInt();
		
		for(int j=0; j<=input; j++) {
			for(int i=0; i<=j; i++) {
				
				System.out.print("*");
			}
			System.out.println();
		}
		
	}

}
