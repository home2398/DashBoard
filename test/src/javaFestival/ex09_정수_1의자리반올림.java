package javaFestival;

import java.util.Scanner;

public class ex09_정수_1의자리반올림 {

	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		System.out.print("숫자 입력 : ");
		int input = sc.nextInt();
		
		
		if(input%10<5) {
			
			int total=input-(input%10);
			System.out.println(total);
		}
		else {
//			int total=(input-(input%10))+10;
			System.out.println((input-(input%10))+10);
			
		}
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	}

}
