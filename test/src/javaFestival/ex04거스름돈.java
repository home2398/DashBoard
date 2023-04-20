package javaFestival;

import java.util.Scanner;

public class ex04거스름돈 {

	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		System.out.print("총금액 입력 : ");
		int input = sc.nextInt();
		
		System.out.println("잔돈 : " +input+"원");
		System.out.println("10000원 : " +input/10000+"개");
		System.out.println("5000 : " +input%10000/5000+"개");
		System.out.println("1000 : " +input%10000%5000/1000+"개");
		System.out.println("500 : " +input%10000%5000%1000/500+"개");
		System.out.println("100 : " +input%10000%5000%1000%500/100+"개");
		
		
		
		
	}

}
