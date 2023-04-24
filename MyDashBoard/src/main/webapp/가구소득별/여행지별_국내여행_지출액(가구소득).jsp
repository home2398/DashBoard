<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>여행지별_국내여행_지출액(가구소득)</title>
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
						data : [ 20, 25, 12, 9, 10, 6, 6, 3, 39, 33, 12, 22,
								23, 24, 34, 25, 44 ],
						backgroundColor : "rgba(75, 192, 192, 0.2)", // 막대 그래프의 채우기 색상
						borderColor : "rgba(75, 192, 192, 1)", // 막대 그래프의 테두리 색상
						borderWidth : 1,

					// 막대 그래프의 테두리 두께
					},
					{
						label : "100~200만원 미만",
						data : [ 46, 37, 20, 20, 8, 11, 12, 2, 73, 71, 42, 39,
								40, 79, 62, 62, 64 ],
						backgroundColor : "rgba(255, 99, 132, 0.2)",
						borderColor : "rgba(255, 99, 132, 1)",
						borderWidth : 1
					},
					{
						label : "200~300만원 미만",
						data : [ 81, 134, 54, 60, 18, 59, 57, 24, 327, 278,
								110, 238, 185, 221, 219, 260, 427 ],
						backgroundColor : "rgba(255, 205, 86, 0.2)",
						borderColor : "rgba(255, 205, 86, 1)",
						borderWidth : 1
					},
					{
						label : "300~400만원 미만",
						data : [ 202, 245, 97, 125, 42, 73, 52, 13, 470, 568,
								171, 369, 265, 394, 432, 425, 824 ],
						backgroundColor : "rgba(54, 162, 235, 0.2)",
						borderColor : "rgba(54, 162, 235, 1)",
						borderWidth : 1
					},
					{
						label : "400~500만원 미만",
						data : [ 232, 231, 74, 87, 23, 62, 67, 27, 520, 503,
								171, 321, 271, 481, 389, 429, 888 ],
						backgroundColor : "rgba(153, 102, 255, 0.2)",
						borderColor : "rgba(153, 102, 255, 1)",
						borderWidth : 1
					},
					{
						label : "500~600만원 미만",
						data : [ 188, 278, 55, 142, 33, 78, 44, 15, 648, 813,
								178, 358, 260, 435, 346, 416, 1078 ],
						backgroundColor : "rgba(255, 159, 64, 0.2)",
						borderColor : "rgba(255, 159, 64, 1)",
						borderWidth : 1
					},
					{
						label : "600만원 이상",
						data : [ 266, 423, 59, 207, 32, 89, 63, 23, 946, 1126,
								197, 375, 219, 356, 510, 386, 1944 ],
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
						text : "여행지별_국내여행_지출액(가구소득)"
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