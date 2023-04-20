package javaFestival;

public class ex06_77계산 {

	public static void main(String[] args) {
		int sum = 0;
		int j = 0;
		for (int i = 77; i > 0; i--) {
			j++;
			sum += (i * j);
		}
		System.out.println(sum);

	}

}
