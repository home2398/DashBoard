package test01;

import java.util.Scanner;

public class ex숫자입력받기 {

	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		
		int num_A =1;
		int num_B =1;
		
		
		
		int result = 0;
		
		while(true) {
//		if (num_A ==0 && num_B ==0){
//			break;
//		}
		 if (num_A !=0 && num_B != 0) {
//			System.out.print("A 입력 >> "); // A입력
//			  num_A = sc.nextInt();
//			
//			System.out.print("B 입력 >> "); // B입력
			System.out.print("A 입력 >> "); // A입력
			num_A = sc.nextInt();
			
			System.out.print("B 입력 >> "); // B입력
			num_B = sc.nextInt();
			if (num_A == 0 && num_B ==0){
				break;
			}
			result = num_A - num_B; // A-B 결과
			}
//		else if (num_A == 0 && num_B ==0) {
//			break;
//		}
		System.out.println("결과 >> " + result); // 결과출력
		}
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	}

	}
