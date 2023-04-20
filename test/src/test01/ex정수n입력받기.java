package test01;

import java.util.Scanner;

public class ex정수n입력받기 {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);

		int sum = 1;
		int c = 0;

		System.out.print("n 입력 : ");
		int input = sc.nextInt();

//		System.out.println();

		for (int i = 1; i <= input; i++) {
//			System.out.print(i);
//			System.out.print(i);
//			System.out.print(c);
			sum = (sum + c);
			c++;
			System.out.print(sum+" ");
		}

//		System.out.println();
//		
//		
//		
//		for(int j=1; j<3; j++) {
//			c++;
//			System.out.print(j);
//			
//		}
//		System.out.println(i+j);

	}

}
