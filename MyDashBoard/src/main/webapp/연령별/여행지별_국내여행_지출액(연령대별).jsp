<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>여행지별_국내여행_지출액(연령대별)</title>
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
		// 데이터 설정
		var data = {
			labels : [ "서울", "부산", "대구", "인천", "광주", "대전", "울산", "세종", "경기",
					"강원", "충북", "충남", "전북", "전남", "경북", "경남", "제주" ],
			datasets : [
					{
						label : "15~19세",
						data : [ 57, 65, 12, 11, 6, 5, 6, 14, 99, 85, 12, 38, 36, 54, 45, 26, 70 ],
						fill : false, // 라인 차트에서 선 아래를 채우지 않음
						borderColor : "rgba(75, 192, 192, 1)", // 라인 색상
					},
					{
						label : "20대",
						data : [ 287, 448, 93, 153, 25, 65, 30, 22, 677, 652, 151, 308, 258, 401, 305, 307, 1173 ],
						fill : false,
						borderColor : "rgba(255, 99, 132, 1)",
					},
					{
						label : "30대",
						data : [ 268, 366, 62, 125, 40, 84, 81, 20, 666, 727, 160, 354, 252, 376, 455, 434, 1468 ],
						fill : false,
						borderColor : "rgba(54, 162, 235, 1)",
					},
					{
						label : "40대",
						data : [ 161, 230, 67, 163, 41, 71, 80, 22, 625, 758, 157, 396, 259, 388, 374, 465, 1047 ],
						fill : false,
						borderColor : "rgba(255, 206, 86, 1)",
					},
					{
						label : "50대",
						data : [ 136, 165, 80, 121, 27, 99, 54, 15, 534, 653, 213, 361, 274, 408, 504, 476, 894 ],
						fill : false,
						borderColor : "rgba(153, 102, 255, 1)",
					},
					{
						label : "60대",
						data : [ 75, 66, 38, 62, 22, 38, 38, 6, 299, 445, 134, 194, 149, 277, 239, 253, 516 ],
						fill : false,
						borderColor : "rgba(255, 159, 64, 1)",
					},
					{
						label : "70세이상",
						data : [ 52, 34, 17, 16, 6, 15, 13, 7, 124, 71, 54, 72, 35, 84, 70, 41, 100 ],
						fill : false,
						borderColor : "rgba(255, 0, 0, 1)",
					} ],
		};

		// 차트 옵션 설정
		var options = {
			responsive : true,
			title : {
				display : true,
				fontSize : 16,
				fontColor : "#333",
			},
			scales : {
				y : {
					beginAtZero : true,
					max : 1500, // y축 최대값 설정
					ticks : {
						stepSize : 100, // y축 간격 설정
					}
				}
			}
		};

		// 라인 차트 생성
		var ctx = document.getElementById("myChart").getContext("2d");
		var myLineChart = new Chart(ctx, {
			type : "line",
			data : data,
			options : {
				plugins : {
					title: {
						display: true,
						text: "여행지별_국내여행_지출액(연령대별)"
					}
				}
			}
		});
	</script>
</body>
</html>