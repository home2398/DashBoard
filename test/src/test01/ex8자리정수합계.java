package test01;

import java.util.Scanner;

public class ex8자리정수합계 {

	public static void main(String[] args) {
		
	Scanner sc = new Scanner(System.in);
	
	int sum=0;
	int num=0;
	
	System.out.print("정수 입력 : ");
	int input = sc.nextInt();
	
	System.out.println("!=====프로그래밍 나누기 공식======!");
	System.out.println("====10을 나누면 몫은 끝자리 제외====");
	System.out.println(input/10); //나눌대상 input 에서 끝자리 한개씩 감소
	System.out.println("====10을 나누면 나머지는 끝자리 나옴====");
	System.out.println(input%10); //누적합
	
	while(input>0) {
		sum=sum+(input%10);
		input=input/10;
	}
	System.out.println("=====정답=====");
	System.out.println("합은 "+sum+"입니다.");
	
//	for(int i=0; i<input; i++) {
////		sum=input+;
//	}
//	System.out.println();
//	System.out.println(input);
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	}

}
