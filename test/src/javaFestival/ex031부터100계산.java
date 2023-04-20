package javaFestival;

public class ex031부터100계산 {

	public static void main(String[] args) {
		int hol=0;
		int jjak=0;
		int sum=0;
		for (int i=1 ; i<=100; i++) {
			
//			System.out.print(i);
			if(i%2==1) {
				hol=hol+i;
				System.out.print(" "+i+" ");
			}
			if(i%2==0) {
				jjak=jjak+i;
				System.out.print("-"+i);
			}
			
		}
		System.out.println();
		System.out.print("결과 : ");
		System.out.println(hol-jjak);
		
	}

}
