package javaFestival;

import java.nio.file.FileSystemLoopException;
import java.util.Scanner;

public class ex01몸무게프로그램 {

	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		System.out.print("현재 몸무게 : ");
		int weight = sc.nextInt();
		System.out.print("목표 몸무게 : ");
		int goal = sc.nextInt();
		
		int input=0;
		
		int week = 0;
		while(true) {
			if(weight>goal) {
				week++;
				System.out.print(week+"주차 감량 몸무게 : ");
				input = sc.nextInt();
				weight=weight-input;
				 
				 
			}
			else {
				System.out.println(goal+"kg 달성!! 축하합니다!");
				break;
			}
		}
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	}

}
