<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<title>여행지별_국내여행_횟수(가구원수)</title>
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
	<canvas id="chartCanvas"></canvas>
	<script>
		// 데이터
		var data = {
			labels : [ "서울", "부산", "대구", "인천", "광주", "대전", "울산", "세종", "경기",
					"강원", "충북", "충남", "전북", "전남", "경북", "경남", "제주" ],
			datasets : [
					{
						label : '1인',
						data : [ 24, 34, 12, 14, 6, 13, 8, 3, 66, 66, 20, 35,
								32, 36, 45, 38, 102 ],
						backgroundColor : 'rgba(255, 99, 132, 0.5)'
					},
					{
						label : '2인',
						data : [ 17, 17, 7, 10, 4, 5, 5, 2, 44, 52, 20, 32, 30,
								43, 37, 41, 93 ],
						backgroundColor : 'rgba(54, 162, 235, 0.5)'
					},
					{
						label : '3인이상',
						data : [ 25, 35, 7, 16, 3, 8, 7, 3, 76, 86, 19, 41, 26,
								46, 46, 46, 128 ],
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
						text : "여행지별_국내여행_횟수(가구원수)"
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