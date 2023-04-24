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
						data : [ 225, 169, 152, 154, 42, 91, 69, 0, 611, 182,
								197, 193, 360, 488, 499, 417, 37 ],
						backgroundColor : "rgba(75, 192, 192, 0.2)", // 막대 그래프의 채우기 색상
						borderColor : "rgba(75, 192, 192, 1)", // 막대 그래프의 테두리 색상
						borderWidth : 1,

					// 막대 그래프의 테두리 두께
					},
					{
						label : "중학교",
						data : [ 462, 266, 208, 157, 81, 159, 252, 111, 1359,
								476, 495, 716, 504, 863, 1035, 993, 179 ],
						backgroundColor : "rgba(255, 99, 132, 0.2)",
						borderColor : "rgba(255, 99, 132, 1)",
						borderWidth : 1
					},
					{
						label : "고등학교",
						data : [ 3694, 2702, 1350, 2673, 599, 1442, 1416, 480,
								18454, 8342, 4131, 7225, 4560, 7216, 7475,
								8850, 2589 ],
						backgroundColor : "rgba(255, 205, 86, 0.2)",
						borderColor : "rgba(255, 205, 86, 1)",
						borderWidth : 1
					},
					{
						label : "대학교 이상",
						data : [ 8879, 6815, 2297, 6159, 1086, 2910, 2457,
								1292, 32976, 16422, 5324, 11012, 8414, 11563,
								13624, 13248, 8292 ],
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
						text : "여행지별_국내여행_횟수(학력별)"
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