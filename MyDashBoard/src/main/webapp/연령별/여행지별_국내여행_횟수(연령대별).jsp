<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>여행지별_국내여행_횟수(연령대별)</title>
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
						data : [ 809, 457, 131, 317, 85, 97, 103, 140, 1980,
								646, 180, 473, 422, 698, 694, 443, 174 ],
						fill : false, // 라인 차트에서 선 아래를 채우지 않음
						borderColor : "rgba(75, 192, 192, 1)", // 라인 색상
					},
					{
						label : "20대",
						data : [ 3537, 2873, 839, 2057, 289, 846, 476, 360,
								10679, 4544, 1370, 2811, 2495, 3736, 3289,
								3085, 2261 ],
						fill : false,
						borderColor : "rgba(255, 99, 132, 1)",
					},
					{
						label : "30대",
						data : [ 2719, 2212, 707, 1749, 355, 946, 1003, 411,
								10872, 5283, 1846, 3800, 2655, 3632, 4656,
								4725, 2740 ],
						fill : false,
						borderColor : "rgba(54, 162, 235, 1)",
					},
					{
						label : "40대",
						data : [ 2327, 1674, 814, 2144, 424, 930, 859, 435,
								11091, 5853, 1894, 4631, 2876, 4218, 4823,
								5661, 2500 ],
						fill : false,
						borderColor : "rgba(255, 206, 86, 1)",
					},
					{
						label : "50대",
						data : [ 1957, 1607, 744, 1700, 362, 1025, 885, 274,
								9898, 5063, 2544, 4235, 3058, 4043, 5140, 5648,
								2024 ],
						fill : false,
						borderColor : "rgba(153, 102, 255, 1)",
					},
					{
						label : "60대",
						data : [ 1187, 753, 509, 857, 201, 529, 627, 120, 6262,
								3328, 1601, 2311, 1740, 2854, 2933, 3217, 1159 ],
						fill : false,
						borderColor : "rgba(255, 159, 64, 1)",
					},
					{
						label : "70세이상",
						data : [ 722, 377, 264, 317, 90, 229, 242, 143, 2618,
								705, 711, 886, 592, 949, 1100, 730, 240 ],
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
					max : 12000, // y축 최대값 설정
					ticks : {
						stepSize : 1000, // y축 간격 설정
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
						text: "여행지별_국내여행_횟수(연령대별)"
					}
				}
			}
		});
	</script>
</body>
</html>