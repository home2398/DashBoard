<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>1인_평균_여행지별_국내여행_지출액_만15세이상_전국민(가구소득)</title>
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
						data : [ 8, 11, 5, 4, 4, 2, 3, 1, 16, 14, 5, 9, 10, 10,
								14, 10, 18 ],
						backgroundColor : "rgba(75, 192, 192, 0.2)", // 막대 그래프의 채우기 색상
						borderColor : "rgba(75, 192, 192, 1)", // 막대 그래프의 테두리 색상
						borderWidth : 1,

					// 막대 그래프의 테두리 두께
					},
					{
						label : "100~200만원 미만",
						data : [ 13, 11, 6, 6, 2, 3, 4, 1, 21, 21, 12, 12, 11,
								23, 18, 18, 19 ],
						backgroundColor : "rgba(255, 99, 132, 0.2)",
						borderColor : "rgba(255, 99, 132, 1)",
						borderWidth : 1
					},
					{
						label : "200~300만원 미만",
						data : [ 13, 22, 9, 10, 3, 10, 9, 4, 53, 45, 18, 39,
								30, 36, 36, 42, 69 ],
						backgroundColor : "rgba(255, 205, 86, 0.2)",
						borderColor : "rgba(255, 205, 86, 1)",
						borderWidth : 1
					},
					{
						label : "300~400만원 미만",
						data : [ 23, 28, 11, 14, 5, 8, 6, 1, 54, 65, 19, 43,
								30, 44, 49, 48, 94 ],
						backgroundColor : "rgba(54, 162, 235, 0.2)",
						borderColor : "rgba(54, 162, 235, 1)",
						borderWidth : 1
					},
					{
						label : "400~500만원 미만",
						data : [ 27, 27, 9, 10, 3, 7, 8, 3, 62, 60, 20, 38, 32,
								57, 46, 51, 106 ],
						backgroundColor : "rgba(153, 102, 255, 0.2)",
						borderColor : "rgba(153, 102, 255, 1)",
						borderWidth : 1
					},
					{
						label : "500~600만원 미만",
						data : [ 23, 34, 7, 17, 4, 10, 5, 2, 80, 100, 22, 44,
								33, 54, 43, 52, 133 ],
						backgroundColor : "rgba(255, 159, 64, 0.2)",
						borderColor : "rgba(255, 159, 64, 1)",
						borderWidth : 1
					},
					{
						label : "600만원 이상",
						data : [ 32, 51, 7, 25, 4, 11, 8, 3, 113, 134, 24, 45,
								26, 43, 61, 47, 235 ],
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
					title: {
						display: true,
						text: "1인_평균_여행지별_국내여행_지출액_만15세이상_전국민(가구소득)"
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