<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>1회_평균_여행지별_국내여행_지출액_여행경험자(성별별)</title>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
</head>
<body>
    <canvas id="chartCanvas"></canvas>
    <script>
        // 데이터셋 정의
        var data = {
            labels: ["서울", "부산", "대구", "인천", "광주", "대전", "울산", "세종", "경기", "강원", "충북", "충남", "전북", "전남", "경북", "경남", "제주"],
            datasets: [{
                label: "남자",
                data: [80, 136, 96, 72, 80, 88, 74, 57, 58, 134, 89, 90, 94, 100, 88, 85, 492],
                backgroundColor: "rgba(33, 150, 243, 0.8)",
                borderRadius: 10
            }, {
                label: "여자",
                data: [82, 141, 90, 70, 109, 76, 68, 56, 56, 135, 87, 90, 89, 99, 90, 86, 481],
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
						text: "1회_평균_여행지별_국내여행_지출액_여행경험자(성별별)"
					}
				}
			}
		});
    </script>
</body>
</html>
