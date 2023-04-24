<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<title>1인_평균_여행지별_국내여행_지출액_만15세이상_전국민(가구원수)</title>
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
						data : [ 1830, 1597, 661, 1,244, 315, 813, 663, 252, 6697, 2746, 1405, 2439, 1898, 2321, 2776, 2771, 1246 ],
						backgroundColor : 'rgba(255, 99, 132, 0.5)'
					},
					{
						label : '2인',
						data : [ 2157, 1646, 1078, 1664, 470, 961, 967, 348, 9507, 4694, 2603, 4434, 3851, 5385, 5163, 5845, 2099 ],
						backgroundColor : 'rgba(54, 162, 235, 0.5)'
					},
					{
						label : '3인이상',
						data : [ 9272, 6710, 2269, 6234, 1022, 2829, 2563, 1283, 37196, 17982, 6138, 12274, 8089, 12424, 14696, 14892, 7751 ],
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
						text : "1인_평균_여행지별_국내여행_지출액_만15세이상_전국민(가구원수)"
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