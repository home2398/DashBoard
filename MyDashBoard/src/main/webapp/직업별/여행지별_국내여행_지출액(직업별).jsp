<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/chart.js@3.7.0/dist/chart.min.js"></script>
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
	<!-- 차트를 표시할 캔버스 요소 -->
	<canvas id="myChart"></canvas>

	<script>
		// 데이터
		var data = {
			labels : [ "서울", "부산", "대구", "인천", "광주", "대전", "울산", "세종", "경기",
					"강원", "충북", "충남", "전북", "전남", "경북", "경남", "제주" ],
			datasets : [
					{
						label : "임금봉급근로자",
						data : [ 614, 877, 203, 420, 91, 238, 186, 61, 1899,
								2038, 515, 1031, 761, 1119, 1048, 1176, 3330 ],
						backgroundColor : "#FF6384"
					},
					{
						label : "고용원있는사업주",
						data : [ 26, 43, 4, 23, 9, 20, 20, 0, 171, 186, 39, 38,
								33, 43, 83, 56, 222 ],
						backgroundColor : "#36A2EB"
					},
					{
						label : "고용원없는자영업자",
						data : [ 146, 118, 87, 68, 35, 51, 35, 12, 343, 499,
								142, 264, 205, 400, 414, 371, 672 ],
						backgroundColor : "#FFCE56"
					},
					{
						label : "무급가족종사자",
						data : [ 16, 7, 8, 4, 2, 6, 2, 1, 21, 25, 13, 19, 28,
								34, 33, 25, 27 ],
						backgroundColor : "#4BC0C0"
					},
					{
						label : "전업주부",
						data : [ 70, 98, 28, 72, 19, 32, 33, 9, 323, 374, 97,
								209, 118, 201, 217, 234, 635 ],
						backgroundColor : "#9966FF"
					},
					{
						label : "학생",
						data : [ 102, 171, 21, 35, 7, 18, 17, 18, 189, 169, 30,
								122, 84, 133, 131, 95, 255 ],
						backgroundColor : "#33CC33"
					},
					{
						label : "기타",
						data : [ 63, 59, 17, 31, 4, 13, 8, 5, 78, 102, 45, 38,
								34, 59, 66, 44, 128 ],
						backgroundColor : "#FF9900"
					} ]
		};
		// 차트 옵션
		var options = {
			responsive : true,
			maintainAspectRatio : false,
			scales : {
				x : {
					beginAtZero : true,
					max : 4000, // x축 최대값 설정
					grid : {
						display : false
					}
				},
				y : {
					grid : {
						display : false
					}
				}
			}
		};

		// 차트 생성
		var ctx = document.getElementById("myChart").getContext("2d");
		var myChart = new Chart(ctx, {
			type : "bar",
			data : data,
			options : {
				plugins : {
					title: {
						display: true,
						text: "여행지별_국내여행_지출액(직업별)"
					},
				},
		}
	});
	</script>
</body>
</html>
