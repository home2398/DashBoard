<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<title>1회_평균_여행지별_국내여행_지출액_여행경험자(가구원수)</title>
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
						data : [ 91, 145, 124, 76, 126, 109, 84, 69, 65, 158,
								94, 94, 112, 103, 107, 92, 544 ],
						backgroundColor : 'rgba(255, 99, 132, 0.5)'
					},
					{
						label : '2인',
						data : [ 95, 125, 81, 73, 92, 67, 64, 56, 56, 133, 92,
								86, 92, 94, 85, 84, 533 ],
						backgroundColor : 'rgba(54, 162, 235, 0.5)'
					},
					{
						label : '3인이상',
						data : [ 75, 141, 90, 70, 82, 81, 72, 54, 56, 131, 84,
								91, 87, 101, 87, 85, 464 ],
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
						text : "1회_평균_여행지별_국내여행_지출액_여행경험자(가구원수)"
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