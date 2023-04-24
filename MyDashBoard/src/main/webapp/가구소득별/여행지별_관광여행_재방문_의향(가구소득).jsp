<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>여행지별_관광여행_재방문_의향(가구소득)</title>
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
</head>
<body>
	<canvas id="myChart"></canvas>

	<script>
		// 데이터
		var data = {
			labels : [ "서울", "부산", "대구", "인천", "광주", "대전", "울산", "세종", "경기",
					"강원", "충북", "충남", "전북", "전남", "경북", "경남", "제주" ],
			datasets : [
					{
						label : "100만원 미만",
						data : [ 82.4, 81.2, 73.2, 69.6, 80.5, 68.2, 80.5,
								67.8, 75.4, 79.7, 79.9, 72.9, 77.9, 77.6, 77.4,
								77.5, 77.5 ],
						backgroundColor : "rgba(75, 192, 192, 0.2)", // 막대 그래프의 채우기 색상
						borderColor : "rgba(75, 192, 192, 1)", // 막대 그래프의 테두리 색상
						borderWidth : 1,

					// 막대 그래프의 테두리 두께
					},
					{
						label : "100~200만원 미만",
						data : [ 72, 77.2, 69.4, 75.5, 87.3, 64.6, 79.7, 82.8,
								76.3, 77.9, 77.4, 72.1, 80.2, 81.9, 75.5, 78.5,
								80.2 ],
						backgroundColor : "rgba(255, 99, 132, 0.2)",
						borderColor : "rgba(255, 99, 132, 1)",
						borderWidth : 1
					},
					{
						label : "200~300만원 미만",
						data : [ 72.2, 77.6, 77.3, 73.7, 80.7, 70.1, 76.2,
								74.7, 75.9, 77.5, 71.4, 75.6, 79.4, 79.9, 75.7,
								76.2, 79.3 ],
						backgroundColor : "rgba(255, 205, 86, 0.2)",
						borderColor : "rgba(255, 205, 86, 1)",
						borderWidth : 1
					},
					{
						label : "300~400만원 미만",
						data : [ 75.5, 77.3, 75.7, 72.5, 83, 73.6, 74.6, 69.8,
								75.1, 77.3, 74, 76.8, 81.5, 80.5, 76, 76.3,
								78.3 ],
						backgroundColor : "rgba(54, 162, 235, 0.2)",
						borderColor : "rgba(54, 162, 235, 1)",
						borderWidth : 1
					},
					{
						label : "400~500만원 미만",
						data : [ 76.2, 75.3, 69.1, 76.7, 84.1, 74.6, 74.3,
								70.3, 75.2, 74.6, 75.2, 76.9, 79.6, 82.2, 76.9,
								78, 79.6 ],
						backgroundColor : "rgba(153, 102, 255, 0.2)",
						borderColor : "rgba(153, 102, 255, 1)",
						borderWidth : 1
					},
					{
						label : "500~600만원 미만",
						data : [ 74.5, 77.5, 73, 75, 78.9, 74.8, 77.1, 77.1,
								76.1, 77.6, 77.2, 77.2, 82.7, 83.1, 75.9, 78.6,
								82.1 ],
						backgroundColor : "rgba(255, 159, 64, 0.2)",
						borderColor : "rgba(255, 159, 64, 1)",
						borderWidth : 1
					},
					{
						label : "600만원 이상",
						data : [ 75.2, 77.5, 77.8, 73.7, 81.2, 74.7, 76.4,
								72.9, 75.8, 77.8, 78.8, 76.8, 78.6, 80.8, 76.9,
								77.3, 80.4 ],
						backgroundColor : "rgba(255, 0, 0, 0.5)",
						borderColor : "rgba(255, 0, 0, 1)",
						borderWidth : 1
					} ]
		};

		// 그래프 생성
		var ctx = document.getElementById('myChart').getContext('2d');
		var myChart = new Chart(ctx, {
			type : 'bar',
			data : data,
			options : {
				plugins : {
					title : {
						display : true,
						text : "여행지별_관광여행_재방문_의향(가구소득)"
					},
				},
				scales : {
					y : {
						beginAtZero : true
					}
				}
			}
		});
	</script>
</body>
</html>