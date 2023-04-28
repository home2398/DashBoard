<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<title>여행지별_국내여행_지출액(가구원수)</title>
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
	<canvas id="chartCanvas"></canvas>
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
						label : '1인',
						data : [ 157, 226, 80, 94, 40, 86, 56, 17, 432, 433,
								131, 231, 212, 238, 293, 253, 674 ],
						backgroundColor : 'rgba(255, 99, 132, 0.5)'
					},
					{
						label : '2인',
						data : [ 199, 205, 87, 121, 43, 64, 62, 19, 522, 621,
								237, 380, 352, 503, 434, 487, 1093 ],
						backgroundColor : 'rgba(54, 162, 235, 0.5)'
					},
					{
						label : '3인이상',
						data : [ 679, 942, 203, 437, 84, 228, 183, 69, 2069,
								2338, 513, 1112, 699, 1247, 1265, 1262, 3502 ],
						backgroundColor : 'rgba(255, 206, 86, 0.5)'
					} ]
		};
		// 차트 그리기
		var ctx = document.getElementById('chartCanvas').getContext('2d');
		var myChart = new Chart(ctx, {
			type : 'bar',
			data : data,
			options : {
				plugins : {
					title : {
						display : true,
						text : "여행지별_국내여행_지출액(가구원수)"
					},
				},
				responsive : true,
				legend : {
					position : 'top',
				},
				scales : {
					x : {
						beginAtZero : true
					},
					y : {
						beginAtZero : true
					}
				}
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