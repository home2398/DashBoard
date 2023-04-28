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
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <script src="chart-test.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/chartjs-plugin-datalabels@0.7.0"></script>
    <script src="https://cdn.jsdelivr.net/npm/chartjs-plugin-datalabels"></script>
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
<div id="contentDiv">
<form onsubmit="return false" method="post">
	<!-- 차트를 표시할 캔버스 요소 -->
	<canvas id="myChart"></canvas>
	<input type="checkbox" name="saveName" value="01-Gj">
    <input type = "hidden" name = "fileName" value ="3">
    <input type="submit" value="저장" id = "save">
    </form>
    </div>

	<script>
	document.addEventListener("DOMContentLoaded", function () {
		// 데이터
		var data = {
			labels : [ "서울", "부산", "대구", "인천", "광주", "대전", "울산", "세종", "경기",
					"강원", "충북", "충남", "전북", "전남", "경북", "경남", "제주" ],
			datasets : [
					{
						label : "임금봉급근로자",
						data : [ 7531, 5927, 2151, 5501, 1026, 2782, 2588,
								1089, 31726, 14751, 5740, 11190, 7844, 11113,
								10990, 13234, 6789 ],
						backgroundColor : "#FF6384"
					},
					{
						label : "고용원있는사업주",
						data : [ 332, 247, 69, 385, 78, 186, 101, 10, 2116,
								1053, 287, 404, 281, 399, 921, 481, 493 ],
						backgroundColor : "#36A2EB"
					},
					{
						label : "고용원없는자영업자",
						data : [ 1877, 1065, 777, 1056, 378, 679, 569, 255,
								6798, 4123, 1844, 3175, 2541, 4311, 4864, 4573,
								1431 ],
						backgroundColor : "#FFCE56"
					},
					{
						label : "무급가족종사자",
						data : [ 139, 94, 117, 50, 32, 107, 16, 18, 379, 230,
								168, 321, 364, 503, 483, 412, 81 ],
						backgroundColor : "#4BC0C0"
					},
					{
						label : "학생",
						data : [ 1511, 1253, 211, 636, 101, 275, 296, 237,
								3916, 1260, 420, 1075, 993, 1475, 1687, 1296,
								630 ],
						backgroundColor : "#33CC33"
					},
					{
						label : "전업주부",
						data : [ 1157, 928, 461, 1115, 141, 464, 449, 186,
								6640, 3217, 1200, 2478, 1415, 1837, 2767, 2947,
								1396 ],
						backgroundColor : "#9966FF"
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
					title : {
						display : true,
						text : "여행지별_국내여행_횟수(직업별)"
					},
				},
			}
		});
		
		$('#save').on('click',function(){
        	
        	$.ajax({
        		url : '/MyDashBoard/Mycheck.do',
        		data : $('form').serialize(),
        		success:function(){
        			console.log($('#contentDiv'));
        			$('#contentDiv')[0].innerHTML = '<h1>저장되었습니다.</h1>';
        		}
        	})
        })
	})
	</script>
</body>
</html>
