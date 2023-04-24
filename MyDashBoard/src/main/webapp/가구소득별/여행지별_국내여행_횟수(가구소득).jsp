<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>여행지별_국내여행_횟수(가구소득)</title>
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
						data : [ 246, 219, 163, 142, 77, 110, 117, 71, 867,
								270, 209, 273, 375, 421, 475, 430, 161 ],
						backgroundColor : "rgba(75, 192, 192, 0.2)", // 막대 그래프의 채우기 색상
						borderColor : "rgba(75, 192, 192, 1)", // 막대 그래프의 테두리 색상
						borderWidth : 1,

					// 막대 그래프의 테두리 두께
					},
					{
						label : "100~200만원 미만",
						data : [ 588, 356, 312, 301, 112, 211, 257, 41, 1751,
								629, 480, 609, 591, 861, 1060, 1004, 204 ],
						backgroundColor : "rgba(255, 99, 132, 0.2)",
						borderColor : "rgba(255, 99, 132, 1)",
						borderWidth : 1
					},
					{
						label : "200~300만원 미만",
						data : [ 1124, 1329, 563, 934, 253, 643, 709, 345,
								6152, 2285, 1398, 2627, 2066, 2615, 2633, 3377,
								808 ],
						backgroundColor : "rgba(255, 205, 86, 0.2)",
						borderColor : "rgba(255, 205, 86, 1)",
						borderWidth : 1
					},
					{
						label : "300~400만원 미만",
						data : [ 2412, 2009, 1018, 1691, 489, 901, 825, 376,
								8953, 4220, 2090, 4043, 3153, 4762, 5325, 5852,
								1710 ],
						backgroundColor : "rgba(54, 162, 235, 0.2)",
						borderColor : "rgba(54, 162, 235, 1)",
						borderWidth : 1
					},
					{
						label : "400~500만원 미만",
						data : [ 2974, 1770, 791, 1496, 255, 932, 840, 409,
								9851, 4253, 2209, 4063, 2929, 4652, 4727, 5101,
								1845 ],
						backgroundColor : "rgba(153, 102, 255, 0.2)",
						borderColor : "rgba(153, 102, 255, 1)",
						borderWidth : 1
					},
					{
						label : "500~600만원 미만",
						data : [ 2720, 2039, 640, 1960, 308, 882, 667, 329,
								11561, 6283, 1871, 3654, 2549, 3817, 3678,
								4337, 2269 ],
						backgroundColor : "rgba(255, 159, 64, 0.2)",
						borderColor : "rgba(255, 159, 64, 1)",
						borderWidth : 1
					},
					{
						label : "600만원 이상",
						data : [ 3196, 2232, 520, 2619, 314, 926, 778, 311,
								14265, 7482, 1889, 3876, 2173, 3002, 4736,
								3408, 4100 ],
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
						text : "여행지별_국내여행_횟수(가구소득)"
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