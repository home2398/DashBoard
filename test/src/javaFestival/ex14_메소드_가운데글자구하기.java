package javaFestival;

public class ex14_메소드_가운데글자구하기 {

	public static void main(String[] args) {
		
		System.out.println(getMiddle("abcdefg"));
		
	}

	private static String getMiddle(String string) {
		String result = null ;
		
		if(string.length()%2==0) {
			result=string.substring(string.length()/2-1, string.length()/2+1);
		}
		else {
			result = string.substring(string.length()/2, string.length()/2+1);
		}
		
		return result;
	}

}
