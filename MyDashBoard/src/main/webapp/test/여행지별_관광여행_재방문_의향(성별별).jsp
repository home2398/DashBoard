<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>여행지별_관광여행_재방문_의향(성별별)</title>
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
    <canvas id="chartCanvas"></canvas>
    <input type="checkbox" name="saveName" value="01-Gj">
    <input type = "hidden" name = "fileName" value ="3">
    <input type="submit" value="저장" id = "save">
    </form>
    </div>
    
    <script>
    document.addEventListener("DOMContentLoaded", function () {
        // 데이터셋 정의
        var data = {
            labels: ["서울", "부산", "대구", "인천", "광주", "대전", "울산", "세종", "경기", "강원", "충북", "충남", "전북", "전남", "경북", "경남", "제주"],
            datasets: [{
                label: "남자",
                data: [74.7, 76, 72.7, 74.1, 81.3, 73, 76.2, 71.3, 75.4, 77, 74.4, 76.8, 80.4, 82.1, 76.3, 76.9, 79.6],
                backgroundColor: "rgba(33, 150, 243, 0.8)",
                borderRadius: 10
            }, {
                label: "여자",
                data: [75.3, 78.3, 74.6, 74.3, 82.6, 74, 75.7, 73.1, 75.8, 77.3, 77, 76.3, 80.4, 80.6, 76.3, 77.7, 80.6],
                backgroundColor: "rgba(255, 64, 129, 0.8)",
                borderRadius: 10
            }]
        };

        // 차트 설정
        var options = {
            responsive: true,
            maintainAspectRatio: false,
            scales: {
                x: {
                    grid: {
                        display: false
                    }
                },
                y: {
                    beginAtZero: true,
                    maxTicksLimit: 5,
                    grid: {
                        borderDash: [2],
                        borderDashOffset: [2],
                        color: "rgba(0, 0, 0, 0.1)",
                        drawBorder: false,
                        drawTicks: false,
                        zeroLineColor: "rgba(0, 0, 0, 0.1)",
                        zeroLineBorderDash: [2],
                        zeroLineBorderDashOffset: [2]
                    }
                }
            },
            legend: {
                display: true,
                position: 'bottom',
                labels: {
                    fontColor: 'black'
                }
            },
            title: {
                display: true,
                fontColor: 'black',
                fontSize: 16
            }
        };

        // 차트 생성
        var chartCanvas = document.getElementById("chartCanvas");
        var myChart = new Chart(chartCanvas, {
            type: 'bar',
            data: data,
            options : {
				plugins : {
					title: {
						display: true,
						text: "여행지별_관광여행_재방문_의향(성별별)"
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
