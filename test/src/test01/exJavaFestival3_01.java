package test01;

public class exJavaFestival3_01 {

	public static void main(String[] args) {
		
//		int num=0;
//		
//		for(int i=1; i<101; i++ ) {
//			if(i%2==0) {
//				num = num-i; //-1=1-2, -2=2-4
//				System.out.print("-"+i+" ");
//			} else {
//				num = num+i; //1=0+1,2=-1+3
//				System.out.print(i+" "); //1
//			}
//		}
//		System.out.println();
//		System.out.println("결과 : "+ num);//1-1
//		
		
		
//		
//		i        num	sum
//		1		  1     1
//		2		 -1		-1
//		3		  2		-2
//		4		  
		int total=0;
		int hol=0;
		int jjak=0;
		for(int i=0; i<101; i++) {
			if(i%2!=0) {
				System.out.print("-"+i+ " ");
				hol = hol+i;
			}
			else {
				System.out.print(i+" ");
				jjak = jjak+i;
			}
		}
		total = hol-jjak;
		System.out.println();
//		System.out.println(hol);
//		System.out.println(jjak);
		System.out.println(total);
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	}

}
