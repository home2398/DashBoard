<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/chart.js@3.7.0/dist/chart.min.js"></script>
</head>
<style>
#myChart {
	width: 100%; /* 원하는 가로 크기 */
	height: 400px; /* 원하는 세로 크기 */
	max-width: 100%; /* 최대 가로 크기 */
	max-height: 400px; /* 최대 세로 크기 */
}
</style>
<body>
	<!-- 차트를 표시할 캔버스 요소 -->
	<canvas id="myChart"></canvas>

	<script>
		var data = {
			labels : [ '서울', '부산', '대구', '인천', '광주', '대전', '울산', '세종', '경기',
					'강원', '충북', '충남', '전북', '전남', '경북', '경남', '제주' ],
			datasets : [
					{
						label : '임금봉급근로자',
						data : [ 74.7, 77, 74.2, 74.2, 80.6, 74, 76.3, 70.9,
								75.4, 77.3, 75.9, 76.5, 80.6, 81.6, 77.1, 77.8,
								80.6 ],
						backgroundColor : "#FF6384"
					// 차트 테두리 두께
					},
					{
						label : '고용원있는사업주',
						data : [ 75, 70.6, 76.9, 73.2, 73.1, 76.7, 67.6, 0,
								77.4, 76, 77.4, 74.4, 76.2, 77.7, 80.3, 75.1,
								79.1 ],
								backgroundColor : "#36A2EB"
					// 차트 테두리 두께
					},
					{
						label : '고용원없는자영업자',
						data : [ 75.2, 77.6, 72.2, 74.2, 83.7, 70.5, 78.2,
								77.4, 75.4, 75.9, 75, 78.1, 80.5, 80.9, 74.8,
								76.6, 79.7 ],
								backgroundColor : "#FFCE56"
					// 차트 테두리
					},
					{
						label: '무급가족 종사자',
						data: [74.4, 82.7, 72.6, 81.6, 75, 66.9, 75, 25, 79.6, 77.9, 74.6, 73.7, 77.7, 78.3, 72.2, 79.5, 66.6],
						backgroundColor : "#4BC0C0"
					},
					{
						label: '전업주부',
						data: [75, 75.9, 72.6, 75.3, 84.2, 72.5, 75.5, 75, 76, 77.5, 77.7, 77.2, 82.6, 82.1, 77.1, 77.6, 80.2],
						backgroundColor : "#9966FF"
					},
					{
						label: '학생',
						data: [76.4, 76.7, 74.7, 74.3, 92.5, 75.4, 71, 73.3, 76.3, 77.9, 71.8, 74.2, 79.8, 82.6, 74.3, 75.8, 83.1],
						backgroundColor : "#33CC33"
					},
					{
						label: '기타',
						data: [75.1, 84.3, 76.8, 70.5, 77.4, 75, 74.9, 75, 76.3, 78.9, 73.9, 72.9, 74.6, 79.6, 74.9, 76, 72.1],
						backgroundColor : "#FF9900"
					}
					]
		};

		// 차트 옵션
		var options = {
			responsive : true,
			scales : {
				x : {
					beginAtZero : true,
					max : 100
				},
				y : {
					beginAtZero : true
				}
			}
		};

		// 차트 생성
		var ctx = document.getElementById('myChart').getContext('2d');
		var myChart = new Chart(ctx, {
			type : 'bar',
			data : data,
			options : {
				plugins : {
					title: {
						display: true,
						text: "여행지별_재방문_의향(직업별)"
					},
				},
		}
	});
	</script>
</body>
</html>