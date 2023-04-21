package openCSV;

import java.io.FileReader;
import java.io.Reader;
import java.util.List;

import com.opencsv.CSVReader;

public class ReadCSVFile {

	public static void main(String[] args) {
		
		try {
			// csv파일 읽을 때 사용할 reader 객체 생성
			Reader reader = new FileReader("C:\\Users\\smhrd\\Desktop\\project2\\csv\\1인_평균_여행지별_국내여행_지출액__만15세이상_전국민\\1인_평균_여행지별_국내여행_지출액__만15세이상_전국민(가구소득).csv");
			
			// CSVReader 객체 생성
			CSVReader csvReader = new CSVReader(reader);
			
			// CSV 파일의 모든 행을 읽습니다.
			List<String[]> data = csvReader.readAll();
			csvReader.close();
			
			// 2차원 배열로 변환
			String[][] dataArray = new String[data.size()][];
			for (int i = 0; i < data.size(); i++) {
			    dataArray[i] = data.get(i);
			}
			
			int[] incomeRangeSum = new int[7];
			for (int i = 1; i < dataArray.length; i++) {
			    for (int j = 2; j < dataArray[i].length; j++) {
			        incomeRangeSum[j - 2] += Integer.parseInt(dataArray[i][j]);
			    }
			}
			
			// 데이터를 처리
//			for (String[] row : data) {
//				for(String cell : row) {
//					System.out.println(cell + "\t");
//				}
//				System.out.println();
//			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		
		
		
	}

}
