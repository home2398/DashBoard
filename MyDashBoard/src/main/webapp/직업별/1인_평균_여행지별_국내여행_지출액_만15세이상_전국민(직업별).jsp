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
						data : [ 29	,41	,9,	19	,4	,11	,9,	3,	88,	95,	24,	48,	35,	52,	49,	55	,155 ],
						backgroundColor : "#FF6384"
					},
					{
						label : "고용원있는사업주",
						data : [ 20	,31,	3	,17	,7	,15	,16	,0	,134,	142,	32,	30	,26,	34,	64,	43,	172 ],
						backgroundColor : "#36A2EB"
					},
					{
						label : "고용원없는자영업자",
						data : [ 17	,14	,10,	8	,4,	6	,4,	1	,40,	59	,17	,31,24,	47,	48	,44	,79 ],
						backgroundColor : "#FFCE56"
					},
					{
						label : "무급가족종사자",
						data : [ 17	,8	,10,	4	,3,	8	,2,	1,	24,	26	,14	,22,	31,	40,	38	,28	,32 ],
						backgroundColor : "#4BC0C0"
					},
					{
						label : "전업주부",
						data : [ 10	,15	,4	,11,	3,	5	,5	,1	,48,	56,	14,31,	17,	30,	32,	35	,94 ],
						backgroundColor : "#9966FF"
					},
					{
						label : "학생",
						data : [ 26	,43	,5,	9,	2	,4	,4	,4	,48	,43,	8,	31,	21,	33,33,	23	,64 ],
						backgroundColor : "#33CC33"
					},
					{
						label : "기타",
						data : [ 22	,21	,6	,11	,1	,5	,3	,2	,27	,36,	16	,14	,12,	21,	23,	16	,46 ],
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
						text: "1인_평균_여행지별_국내여행_지출액_만15세이상_전국민(직업별)"
					},
				},
		}
	});
	</script>
</body>
</html>
