<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<title>여행지별_관광여행_재방문_의향(가구원수)</title>
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
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
	<canvas id="chartCanvas" width="400" height="400"></canvas>
	<script>
		// 데이터
		var data = {
			labels : [ "서울", "부산", "대구", "인천", "광주", "대전", "울산", "세종", "경기",
					"강원", "충북", "충남", "전북", "전남", "경북", "경남", "제주" ],
			datasets : [
					{
						label : '1인',
						data : [ 75.7, 76.4, 76.4, 73.7, 82.9, 70.4, 78.6,
								72.7, 75.1, 77.3, 72.8, 74.6, 80.8, 79.5, 75.3,
								76.2, 79.9 ],
						backgroundColor : 'rgba(255, 99, 132, 0.5)'
					},
					{
						label : '2인',
						data : [ 74.1, 77.1, 74.4, 74.7, 83.5, 73.5, 75.7,
								71.2, 76.6, 76.5, 74.5, 76.2, 80.9, 82.3, 77.2,
								77.4, 79.6 ],
						backgroundColor : 'rgba(54, 162, 235, 0.5)'
					},
					{
						label : '3인이상',
						data : [ 75.1, 77.3, 72.8, 74.2, 80.7, 74.2, 75.4,
								72.8, 75.5, 77.3, 76.9, 77, 80.1, 81.3, 76.2,
								77.5, 80.4 ],
						backgroundColor : 'rgba(255, 206, 86, 0.5)'
					} ]
		};
		// 차트 그리기
		var ctx = document.getElementById('chartCanvas').getContext('2d');
		var myChart = new Chart(ctx, {
			type : 'bar',
			data : data,
			options : {
				plugins : {
					title : {
						display : true,
						text : "여행지별_관광여행_재방문_의향(가구원수)"
					},
				},
				responsive : true,
				legend : {
					position : 'top',
				},
				scales : {
					x : {
						beginAtZero : true
					},
					y : {
						beginAtZero : true
					}
				}
			}
		});
	</script>
</body>
</html>