package javaFestival;

import java.util.Scanner;

public class ex25_대시문자출력 {

	public static void main(String[] args) {

		// 짝대기로 이뤄진 디지털 숫자가 있다고 할때,
		// 입력한 숫자의 짝대기 갯수 구하는 문제.
//				2개 -> 1
//				3개 -> 7
//				4개 -> 4
//				5개 -> 2, 3, 5
//				6개 -> 0, 6, 9
//				7개 -> 8
//				Scanner sc = new Scanner(System.in);
//				System.out.print("첫자리 0을 제외한 숫자를 입력해주세요 >> ");
//				String inp = sc.next();
//				int cnt=0;
//				int nu=Integer.parseInt(inp); // Integer.parseInt 명령어를 통해 문자열을 int형으로 변환
//				System.out.println(nu);
//				for(int i=0;i<inp.length();++i) {
//					int num = nu%10;
//					nu/=10;
//					if(num==1) {cnt+=2;}
//					else if(num==7) {cnt+=3;}
//					else if(num==4) {cnt+=4;}
//					else if(num==2 || num==3 ||num==5) {cnt+=5;}
//					else if(num==0 || num==6 || num==9) {cnt+=6;}
//					else if(num==8) {cnt+=7;}}
//				System.out.println("대시('-')의 총 합 >> "+cnt);

		Scanner sc = new Scanner(System.in);
		System.out.print("첫자리 0을 제외한 숫자를 입력해주세요 >> ");
		String str = sc.next(); // 문자열로 데이터 받기

		String array[] = str.split(""); // split 함수로 문자열 한문자씩 나누기

		int sum = 0;

		for (int i = 0; i < array.length; i++) {

			switch (array[i]) {
			case "0":
				sum += 6;
				break;
			case "1":
				sum += 2;
				break;
			case "2":
				sum += 5;
				break;
			case "3":
				sum += 5;
				break;
			case "4":
				sum += 4;
				break;
			case "5":
				sum += 5;
				break;
			case "6":
				sum += 6;
				break;
			case "7":
				sum += 3;
				break;
			case "8":
				sum += 7;
				break;
			case "9":
				sum += 6;
				break;
			}

		}
		System.out.println("대시('-')의 총 합 >> "+sum);
	}

}
