package test01;

import java.util.Random;
import java.util.Scanner;

public class ex랜덤정수 {

	public static void main(String[] args) {
		
	Scanner sc = new Scanner(System.in);
	Random rand = new Random();
	
	int num1 = rand.nextInt(10);
	int num2 = rand.nextInt(10);
	int input=0;
//	int i = 1;
//	while(true) {
//	if ((num1+num2) == input) {
//		System.out.println("SUCCESS");
//		System.out.print(num1 + "+" + num2 + "=");
//		 input = sc.nextInt();
//	}
//	else if ((num1+num2) != input) {
//		System.out.println("Fail...");
//	}
//	}
//		
//	int result = num1+num2;	
//	System.out.print(num1+"+"+num2+" = ");
//	input = sc.nextInt();
	
	
//	do {
//		if(input==result) {
//			System.out.println("SUCCESS");
//		System.out.print(num1+"+"+num2+" = ");
//		input = sc.nextInt();
//		 if(i) {
//				System.out.println("Fail...");
//				i++;
//			}
//		}
//		System.out.println("GAME OVER!");
//		break;
//	}while(i<6);
	System.out.print(num1+"+"+num2+"=");
	input = sc.nextInt();
	for(int i=0; i<6; i++) {
		if((num1+num2)!=input) {
			System.out.println("Fail...");
			System.out.print(num1+"+"+num2+"=");
			input = sc.nextInt();
		}
		
	}
	
	
		
		
	System.out.print(num1+"+"+num2+"=");
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	}

}
