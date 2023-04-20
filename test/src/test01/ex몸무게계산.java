package test01;

import java.util.Scanner;

public class ex몸무게계산 {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);

		System.out.print("현재 몸무게 : ");
		int weight = sc.nextInt();

		System.out.print("목표 몸무게 : ");
		int goal = sc.nextInt();

		int week_num = 0;

//		int result = goal;

		while (true) {
			if (weight > goal) {
				++week_num;
				System.out.print(week_num + "주차 감량 몸무게 : ");
				int input = sc.nextInt();
				weight -= input;

			} else {
				System.out.println(weight + "kg 달성!! 축하합니다!");
				break;
			}

//			++week_num;
//			System.out.print(week_num+"주차 감량 몸무게 : ");
//			int w1 = sc.nextInt();

		}

	}

}
