<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>1인_평균_여행지별_국내여행_지출액_만15세이상_전국민(성별별)</title>
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
                data: [23, 31, 8, 15, 4, 10, 8, 3, 65, 74, 20, 37, 30, 45, 44, 42, 98],
                backgroundColor: "rgba(33, 150, 243, 0.8)",
                borderRadius: 10
            }, {
                label: "여자",
                data: [22, 30, 8, 13, 4, 7, 5, 2, 68, 75, 19, 38, 26, 42, 44, 45, 133],
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
                        display: true
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
						text: "1인_평균_여행지별_국내여행_지출액_만15세이상_전국민(성별별)"
					}
				}
			}
		});
    </script>
</body>
</html>
