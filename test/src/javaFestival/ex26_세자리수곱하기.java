package javaFestival;

import java.util.Scanner;

public class ex26_세자리수곱하기 {

	public static void main(String[] args) {
		
	Scanner sc = new Scanner(System.in);
	System.out.print("첫 번째 숫자 입력 >> ");
	int num1 = sc.nextInt();
	System.out.print("두 번째 숫자 입력 >> ");
	int num2 = sc.nextInt();
	
	int sum = num1*num2;
	
	int one = num2%10;
	int two = (num2%100)/10;
	int three = num2/100;
	
	one = one*num1;
	two = two*num1;
	three = three*num1;
		
	
	System.out.println(one);
	System.out.println(two);
	System.out.println(three);
	System.out.println(sum);
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	}

}
