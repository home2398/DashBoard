<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>1회_평균_여행지별_국내여행_지출액_여행경험자(가구소득)</title>
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
						data : [ 81, 117, 71, 60, 125, 57, 53, 37, 45, 123, 59,
								80, 62, 58, 72, 59, 275 ],
						backgroundColor : "rgba(75, 192, 192, 0.2)", // 막대 그래프의 채우기 색상
						borderColor : "rgba(75, 192, 192, 1)", // 막대 그래프의 테두리 색상
						borderWidth : 1,

					// 막대 그래프의 테두리 두께
					},
					{
						label : "100~200만원 미만",
						data : [ 78, 105, 66, 68, 75, 56, 48, 47, 42, 113, 89,
								64, 68, 91, 59, 62, 312 ],
						backgroundColor : "rgba(255, 99, 132, 0.2)",
						borderColor : "rgba(255, 99, 132, 1)",
						borderWidth : 1
					},
					{
						label : "200~300만원 미만",
						data : [ 74, 102, 96, 66, 71, 92, 81, 69, 54, 123, 79,
								91, 90, 85, 84, 77, 542 ],
						backgroundColor : "rgba(255, 205, 86, 0.2)",
						borderColor : "rgba(255, 205, 86, 1)",
						borderWidth : 1
					},
					{
						label : "300~400만원 미만",
						data : [ 87, 124, 96, 74, 87, 81, 63, 34, 53, 135, 82,
								91, 84, 83, 82, 73, 492 ],
						backgroundColor : "rgba(54, 162, 235, 0.2)",
						borderColor : "rgba(54, 162, 235, 1)",
						borderWidth : 1
					},
					{
						label : "400~500만원 미만",
						data : [ 83, 130, 93, 58, 91, 67, 80, 65, 54, 119, 77,
								80, 94, 104, 83, 85, 481 ],
						backgroundColor : "rgba(153, 102, 255, 0.2)",
						borderColor : "rgba(153, 102, 255, 1)",
						borderWidth : 1
					},
					{
						label : "500~600만원 미만",
						data : [ 70, 137, 86, 71, 108, 89, 66, 45, 57, 131, 95,
								99, 102, 115, 95, 95, 478 ],
						backgroundColor : "rgba(255, 159, 64, 0.2)",
						borderColor : "rgba(255, 159, 64, 1)",
						borderWidth : 1
					},
					{
						label : "600만원 이상",
						data : [ 85, 191, 114, 81, 102, 97, 81, 75, 67, 151,
								109, 97, 101, 119, 108, 114, 496 ],
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
						text : "1회_평균_여행지별_국내여행_지출액_여행경험자(가구소득)"
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