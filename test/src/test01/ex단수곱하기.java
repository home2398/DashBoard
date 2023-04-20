package test01;

import java.util.Scanner;

public class ex단수곱하기 {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);
		System.out.println("단수입력 :");
		int input = sc.nextInt();

		System.out.println("어느 수까지 출력 :");
		int num = sc.nextInt();

		int sum = 1; 
		
		System.out.println(input + "단");

		for (int i = 1; i < num+1; i++) {
//			System.out.println(input*i);
		sum = input*i;	
			
		System.out.println(input+"*"+i+"="+sum);
		
		}

//		System.out.println(input+"*"+2+"="+input*2);
//		System.out.println(input+"*"+3+"="+input*3);
//		System.out.println(input+"*"+4+"="+input*4);
//		System.out.println(input+"*"+5+"="+input*5);
//		System.out.println(input+"*"+6+"="+input*6);

	}

}
