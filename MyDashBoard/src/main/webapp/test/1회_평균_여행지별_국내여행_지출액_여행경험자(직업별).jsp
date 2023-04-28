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
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <script src="chart-test.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/chartjs-plugin-datalabels@0.7.0"></script>
    <script src="https://cdn.jsdelivr.net/npm/chartjs-plugin-datalabels"></script>
</head>
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
						data : [ 84, 149, 95, 76, 88, 86, 72, 56, 61, 138, 91,
								93, 98, 101, 96, 90, 501 ],
						backgroundColor : "#FF6384"
					},
					{
						label : "고용원있는사업주",
						data : [ 79, 176, 56, 60, 115, 107, 219, 13, 79, 180,
								135, 96, 116, 109, 91, 118, 485 ],
						backgroundColor : "#36A2EB"
					},
					{
						label : "고용원없는자영업자",
						data : [ 81, 111, 114, 64, 92, 75, 61, 46, 52, 123, 77,
								83, 81, 94, 87, 82, 481 ],
						backgroundColor : "#FFCE56"
					},
					{
						label : "무급가족종사자",
						data : [ 115, 73, 72, 71, 75, 59, 86, 42, 57, 108, 80,
								60, 78, 69, 70, 60, 338 ],
						backgroundColor : "#4BC0C0"
					},
					{
						label : "전업주부",
						data : [ 62, 106, 62, 65, 137, 69, 74, 51, 49, 117, 82,
								85, 84, 110, 79, 78, 464 ],
						backgroundColor : "#9966FF"
					},
					{
						label : "학생",
						data : [ 68, 137, 100, 54, 69, 69, 57, 77, 48, 134, 72,
								114, 85, 90, 76, 74, 412 ],
						backgroundColor : "#33CC33"
					},
					{
						label : "기타",
						data : [ 94, 136, 79, 80, 78, 121, 47, 55, 44, 131, 95,
								75, 85, 122, 72, 78, 464 ],
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
					title : {
						display : true,
						text : "1인_평균_여행지별_국내여행_지출액_여행경험자(직업별)"
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
