<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>가구 소득에 따른 여행지별 지출액</title>
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
						label : "조졸 이하",
						data : [ 5, 5, 2, 3, 1, 2, 1, 4.875, 8, 6, 3, 4, 7, 10,
								9, 7, 5 ],
						backgroundColor : "rgba(75, 192, 192, 0.2)", // 막대 그래프의 채우기 색상
						borderColor : "rgba(75, 192, 192, 1)", // 막대 그래프의 테두리 색상
						borderWidth : 1,

					// 막대 그래프의 테두리 두께
					},
					{
						label : "중학교",
						data : [ 10, 5, 5, 3, 2, 3, 4, 1, 18, 14, 11, 17, 12,
								20, 18, 19, 14 ],
						backgroundColor : "rgba(255, 99, 132, 0.2)",
						borderColor : "rgba(255, 99, 132, 1)",
						borderWidth : 1
					},
					{
						label : "고등학교",
						data : [ 12, 17, 7, 9, 3, 6, 6, 1, 50, 59, 20, 33, 21,
								39, 37, 39, 61 ],
						backgroundColor : "rgba(255, 205, 86, 0.2)",
						borderColor : "rgba(255, 205, 86, 1)",
						borderWidth : 1
					},
					{
						label : "대학교 이상",
						data : [ 35, 48, 11, 21, 5, 12, 8, 3, 94, 105, 22, 49,
								38, 55, 57, 56, 189 ],
						backgroundColor : "rgba(54, 162, 235, 0.2)",
						borderColor : "rgba(54, 162, 235, 1)",
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
						text : "1인_평균_여행지별_국내여행_지출액_만15세이상_전국민(학력별)"
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