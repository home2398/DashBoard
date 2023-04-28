<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>가구 소득에 따른 여행지별 지출액</title>
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <script src="chart-test.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/chartjs-plugin-datalabels@0.7.0"></script>
    <script src="https://cdn.jsdelivr.net/npm/chartjs-plugin-datalabels"></script>
</head>
<body>
<div id="contentDiv">
<form onsubmit="return false" method="post">
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
						label : "조졸 이하",
						data : [ 68, 81.5, 73.1, 75, 77.8, 63.8, 80.9, 0, 75.8,
								73.9, 83, 73.8, 78.5, 79.4, 75.1, 81.1, 75 ],
						backgroundColor : "rgba(75, 192, 192, 0.2)", // 막대 그래프의 채우기 색상
						borderColor : "rgba(75, 192, 192, 1)", // 막대 그래프의 테두리 색상
						borderWidth : 1,

					// 막대 그래프의 테두리 두께
					},
					{
						label : "중학교",
						data : [ 70, 73.2, 72.1, 69.7, 88.2, 71.6, 78.3, 74.3,
								76, 74.3, 75.4, 75.7, 77.7, 77.7, 75.1, 75.9,
								73.3 ],
						backgroundColor : "rgba(255, 99, 132, 0.2)",
						borderColor : "rgba(255, 99, 132, 1)",
						borderWidth : 1
					},
					{
						label : "고등학교",
						data : [ 75.7, 77.7, 71.4, 74.1, 83.8, 71.9, 75.4,
								75.2, 75.5, 76.9, 77.4, 76.9, 80.1, 80.4, 76.7,
								77.3, 80.1 ],
						backgroundColor : "rgba(255, 205, 86, 0.2)",
						borderColor : "rgba(255, 205, 86, 1)",
						borderWidth : 1
					},
					{
						label : "대학교 이상",
						data : [ 75, 77, 75.3, 74.4, 80.4, 74.5, 75.8, 71.1,
								75.7, 77.4, 74.3, 76.4, 80.8, 82.3, 76.3, 77.4,
								80.3 ],
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
						text : "여행지별_관광여행_재방문_의향(학력별)"
					},
				},
				scales : {
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