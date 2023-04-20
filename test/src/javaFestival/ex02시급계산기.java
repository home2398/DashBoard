package javaFestival;

import java.util.Scanner;

public class ex02시급계산기 {

	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		System.out.print("일할시간을 입력하세요 : ");
		int input = sc.nextInt();
		
		int pay=0;
		
		int time = 8;
		int over_pay=0;
		
		int pay1=5000;
		
		if(input>time) {
			over_pay=input-time;
		    pay=(int) ((time*pay1)+(pay1*1.5)*over_pay);
			System.out.println("총 임금은"+pay);
		}
		else {
			pay=input*pay1;
			System.out.println("총 임금은"+pay);
		}
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	}

}
