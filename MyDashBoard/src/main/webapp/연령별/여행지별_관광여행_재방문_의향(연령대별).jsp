<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>여행지별_관광여행_재방문_의향(연령대별)</title>
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
		// 데이터 설정
		var data = {
			labels : [ "서울", "부산", "대구", "인천", "광주", "대전", "울산", "세종", "경기",
					"강원", "충북", "충남", "전북", "전남", "경북", "경남", "제주" ],
			datasets : [
					{
						label : "15~19세",
						data : [ 75.3, 75.7, 73.1, 72.7, 91.8, 73.6, 70.9,
								71.8, 75, 76.8, 69.7, 74, 79.2, 81.9, 74.6,
								74.5, 87.8 ],
						fill : false, // 라인 차트에서 선 아래를 채우지 않음
						borderColor : "rgba(75, 192, 192, 1)", // 라인 색상
					},
					{
						label : "20대",
						data : [ 76.2, 78.1, 73.6, 74.4, 78, 74.2, 74.6, 73.4,
								75.6, 77.5, 76.5, 77.2, 81.3, 83.3, 75, 78.7,
								82.2 ],
						fill : false,
						borderColor : "rgba(255, 99, 132, 1)",
					},
					{
						label : "30대",
						data : [ 72, 77, 75.1, 73.3, 84.5, 72.9, 75.3, 74.8,
								75.8, 77.7, 72.4, 76.2, 81.1, 81.3, 77.1, 77,
								79.3 ],
						fill : false,
						borderColor : "rgba(54, 162, 235, 1)",
					},
					{
						label : "40대",
						data : [ 75.9, 76.4, 74.3, 74.5, 80.4, 73, 75.7, 76.6,
								75.7, 76.4, 76, 75.6, 80.8, 80.4, 76.6, 77.4,
								80.7 ],
						fill : false,
						borderColor : "rgba(255, 206, 86, 1)",
					},
					{
						label : "50대",
						data : [ 75.6, 76.5, 72.7, 75.3, 80.5, 74.4, 76.6,
								61.1, 75.3, 76.9, 77.4, 78, 79.7, 80.9, 76.5,
								77.3, 79.3 ],
						fill : false,
						borderColor : "rgba(153, 102, 255, 1)",
					},
					{
						label : "60대",
						data : [ 72.7, 76.9, 73.9, 74.3, 82, 73.2, 77.9, 75,
								76.3, 77.8, 76.5, 76.8, 79.8, 81.1, 76.5, 77,
								77.9 ],
						fill : false,
						borderColor : "rgba(255, 159, 64, 1)",
					},
					{
						label : "70세이상",
						data : [ 79.4, 78.2, 72.3, 68.4, 84.5, 68.2, 76.5,
								72.8, 75.2, 75.8, 75.9, 74.2, 78.3, 80.4, 75.7,
								76.9, 77.9 ],
						fill : false,
						borderColor : "rgba(255, 0, 0, 1)",
					} ],
		};

		// 차트 옵션 설정
		var options = {
			responsive : true,
			title : {
				display : true,
				fontSize : 16,
				fontColor : "#333",
			},
			scales : {
				y : {
					beginAtZero : true,
					max : 100, // y축 최대값 설정
					ticks : {
						stepSize : 20, // y축 간격 설정
					}
				}
			}
		};

		// 라인 차트 생성
		var ctx = document.getElementById("myChart").getContext("2d");
		var myLineChart = new Chart(ctx, {
			type : "line",
			data : data,
			options : {
				plugins : {
					title: {
						display: true,
						text: "여행지별_관광여행_재방문_의향(연령대별)"
					}
				}
			}
		});
	</script>
</body>
</html>