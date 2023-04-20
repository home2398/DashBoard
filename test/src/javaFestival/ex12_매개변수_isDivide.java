package javaFestival;

public class ex12_매개변수_isDivide {

	public static void main(String[] args) {
		
	int num1 = 10;
	int num2 = 5;
	boolean result = isDivide(num1,num2);
	System.out.println("결과 확인 : " + result);
		
		
	}

	private static boolean isDivide(int num1, int num2) {
		boolean result=true;
		
		if(num1%num2==0) {
			result=true;
		}
		else if(num1%num2!=0) {
			result=false;
		}
		
		
		
		
		return result;
	}

	
	
	
	
	
	
	
}
