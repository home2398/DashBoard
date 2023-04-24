<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>1인_평균_여행지별_국내여행_지출액_만15세이상_전국민(연령대별)</title>
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
						data : [ 24, 28, 5, 5, 3, 2, 2, 6, 43, 37, 5, 16, 15,
								23, 19, 11, 30 ],
						fill : false, // 라인 차트에서 선 아래를 채우지 않음
						borderColor : "rgba(75, 192, 192, 1)", // 라인 색상
					},
					{
						label : "20대",
						data : [ 42, 65, 14, 22, 4, 9, 4, 3, 98, 94, 22, 45,
								37, 58, 44, 44, 170 ],
						fill : false,
						borderColor : "rgba(255, 99, 132, 1)",
					},
					{
						label : "30대",
						data : [ 38, 52, 9, 18, 6, 12, 11, 3, 94, 103, 23, 50,
								36, 53, 65, 62, 208 ],
						fill : false,
						borderColor : "rgba(54, 162, 235, 1)",
					},
					{
						label : "40대",
						data : [ 20, 28, 8, 20, 5, 9, 10, 3, 76, 92, 19, 48,
								32, 47, 46, 57, 128 ],
						fill : false,
						borderColor : "rgba(255, 206, 86, 1)",
					},
					{
						label : "50대",
						data : [ 16, 19, 9, 14, 3, 12, 6, 2, 62, 76, 25, 42,
								32, 48, 59, 56, 104 ],
						fill : false,
						borderColor : "rgba(153, 102, 255, 1)",
					},
					{
						label : "60대",
						data : [ 11, 9, 5, 9, 3, 5, 5, 1, 43, 64, 19, 28, 21,
								40, 34, 36, 74 ],
						fill : false,
						borderColor : "rgba(255, 159, 64, 1)",
					},
					{
						label : "70세이상",
						data : [ 9, 6, 3, 3, 1, 3, 2, 1, 22, 13, 9, 13, 6, 15,
								12, 7, 18 ],
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
					max : 300, // y축 최대값 설정
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
						text: "1인_평균_여행지별_국내여행_지출액_만15세이상_전국민(연령대별)"
					}
				}
			}
		});
	</script>
</body>
</html>