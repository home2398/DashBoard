<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>1인_평균_여행지별_국내여행_지출액_여행경험자(연령대별)</title>
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
						data : [ 72, 141, 93, 34, 73, 55, 55, 97, 50, 132, 67,
								80, 85, 78, 65, 60, 402 ],
						fill : false, // 라인 차트에서 선 아래를 채우지 않음
						borderColor : "rgba(75, 192, 192, 1)", // 라인 색상
					},
					{
						label : "20대",
						data : [ 83, 157, 112, 75, 87, 79, 64, 61, 64, 144,
								110, 111, 104, 107, 93, 100, 528 ],
						fill : false,
						borderColor : "rgba(255, 99, 132, 1)",
					},
					{
						label : "30대",
						data : [ 100, 168, 89, 71, 114, 89, 80, 50, 62, 139,
								88, 94, 95, 104, 98, 93, 536 ],
						fill : false,
						borderColor : "rgba(54, 162, 235, 1)",
					},
					{
						label : "40대",
						data : [ 74, 138, 82, 76, 95, 77, 93, 51, 58, 130, 82,
								86, 90, 93, 78, 83, 439 ],
						fill : false,
						borderColor : "rgba(255, 206, 86, 1)",
					},
					{
						label : "50대",
						data : [ 71, 103, 108, 71, 74, 96, 61, 55, 53, 130, 85,
								86, 90, 102, 100, 84, 455 ],
						fill : false,
						borderColor : "rgba(153, 102, 255, 1)",
					},
					{
						label : "60대",
						data : [ 64, 87, 75, 73, 110, 73, 61, 49, 49, 136, 84,
								83, 86, 98, 82, 79, 461 ],
						fill : false,
						borderColor : "rgba(255, 159, 64, 1)",
					},
					{
						label : "70세이상",
						data : [ 75, 90, 64, 51, 65, 68, 52, 50, 46, 101, 78,
								81, 59, 89, 64, 57, 419 ],
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
					max : 600, // y축 최대값 설정
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
						text: "1인_평균_여행지별_국내여행_지출액_여행경험자(연령대별)"
					}
				}
			}
		});
	</script>
</body>
</html>