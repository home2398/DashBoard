<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <title>1인_평균_여행지별_국내여행_지출액_만15세이상_전국민(가구소득)</title>

    <style>
        .chart-container {
            width: 80%;
            margin: 0 auto;
        }

        .btn-container {
            width: 80%;
            margin: 20px auto;
            text-align: center;
        }

        .btn {
            display: inline-block;
            margin: 0 10px;
            padding: 10px 20px;
            background-color: #007bff;
            color: #fff;
            cursor: pointer;
        }
    </style>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <script src="chart-test.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/chartjs-plugin-datalabels@0.7.0"></script>
</head>

<body>
    <h1 align="center">1인_평균_여행지별_국내여행_지출액_만15세이상_전국민(가구소득)</h1>
    <div class="chart-container">
        <canvas id="myChart" width="100" height="50"></canvas>
    </div>
    <div class="btn-container">
        <button class="btn" id="seoulBtn">서울</button>
        <button class="btn" id="busanBtn">부산</button>
        <button class="btn" id="daeguBtn">대구</button>
        <button class="btn" id="incheonBtn">인천</button>
        <button class="btn" id="gwangjuBtn">광주</button>
        <button class="btn" id="daejeonBtn">대전</button>
        <button class="btn" id="ulsanBtn">울산</button>
        <button class="btn" id="sejongBtn">세종</button>
        <button class="btn" id="gyeonggiBtn">경기</button>
        <button class="btn" id="gangwonBtn">강원</button>
        <button class="btn" id="chongbukBtn">충북</button>
        <button class="btn" id="chongnamBtn">충남</button>
        <button class="btn" id="jeonbukBtn">전북</button>
        <button class="btn" id="jeonnamBtn">전남</button>
        <button class="btn" id="gyongbukBtn">경북</button>
        <button class="btn" id="gyongnamBtn">경남</button>
        <button class="btn" id="jejuBtn">제주</button>
    </div>


    <script>
        document.addEventListener("DOMContentLoaded", function () {
            // 통계 데이터
            var data = {
                labels: ["100만원 미만", "100~200만원 미만", "200~300만원 미만", "300~400만원 미만", "400~500만원 미만", "500~600만원 미만", "600만원 이상"],
                datasets: [{
                    label: "지출액",
                    backgroundColor: ['rgba(255, 109, 96, 0.2)', 'rgba(247, 208, 96, 0.2)', 'rgba(243, 219, 8, 0.2)', 'rgba(152, 216, 170, 0.2)'],
                    borderColor: ['rgba(255, 109, 96, 1)', 'rgba(247, 208, 96, 1)', 'rgba(243, 233, 159, 1)', 'rgba(159, 216, 170, 1)'],
                    borderWidth: 1,
                    data: [8, 13, 11, 10, 12, 13, 14] // 1차원 형식으로 넣어줘야함(여기에 바로 데이터-2차원를 넣어주면 차트형식이 이상해짐)
                }]
            };

            // 차트 생성
            var ctx = document.getElementById('myChart').getContext('2d');

            var myChart = new Chart(ctx, {
                type: 'bar',
                data: data,
                options: {
                    scales: {
                        y: {
                            beginAtZero: true,
                            min: 0,
                            max: null
                        }
                    },
                    scales: {
                        y: {
                            grid: {
                                display: false
                            }
                        }
                    }
                }
            });



            // 버튼 클릭 이벤트 리스너
            // 버튼 id와 대응하는 데이터 인덱스를 객체 배열로 정의
            const chartData = [
                { id: 'seoulBtn', index: 0 },
                { id: 'busanBtn', index: 1 },
                { id: 'daeguBtn', index: 2 },
                { id: 'incheonBtn', index: 3 },
                { id: 'gwangjuBtn', index: 4 },
                { id: 'daejeonBtn', index: 5 },
                { id: 'ulsanBtn', index: 6 },
                { id: 'sejongBtn', index: 7 },
                { id: 'gyeonggiBtn', index: 8 },
                { id: 'gangwonBtn', index: 9 },
                { id: 'chongbukBtn', index: 10 },
                { id: 'chongnamBtn', index: 11 },
                { id: 'jeonbukBtn', index: 12 },
                { id: 'jeonnamBtn', index: 13 },
                { id: 'gyongbukBtn', index: 14 },
                { id: 'gyongnamBtn', index: 15 },
                { id: 'jejuBtn', index: 16 }
            ];

            // for문으로 버튼 이벤트 리스너 등록
            for (let i = 0; i < chartData.length; i++) {
                document.getElementById(chartData[i].id).addEventListener('click', function () {
                    updateChart(chartData[i].index); // 해당 버튼에 대응하는 데이터 인덱스로 차트 업데이트
                });
            }

            // 2차원의 데이터(원본형태)
            var clickData = [
                [8, 13, 13, 23, 27, 23, 32], // 서울에 대한 데이터
                [11, 11, 22, 28, 27, 34, 51], // 부산에 대한 데이터
                [5, 6, 9, 11, 9, 7, 7],         // 대구 데이터
                [4, 6, 10, 14, 10, 17, 25],     // 인천
                [4, 2, 3, 5, 3, 4, 4],          // 광주 ~~~~~ 위 html 코드 div안쪽의 지역버튼 순서대로
                [2, 3, 10, 8, 7, 10, 11],
                [3, 4, 9, 6, 8, 5, 8],
                [1, 1, 4, 1, 3, 2, 3],
                [16, 21, 53, 54, 62, 80, 113],
                [14, 23, 45, 65, 60, 100, 134],
                [5, 12, 18, 19, 20, 22, 24],
                [9, 12, 39, 43, 38, 44, 45],
                [10, 11, 30, 30, 32, 33, 26],
                [10, 23, 36, 44, 57, 54, 43],
                [14, 18, 36, 49, 46, 43, 61],
                [10, 18, 42, 48, 51, 52, 47],
                [18, 19, 69, 94, 106, 133, 235]
            ]

            // updateChart 함수 정의
            function updateChart(index) {
                // 데이터 업데이트
                myChart.data.datasets[0].data = clickData[index];
                myChart.update(); // 차트 업데이트
            }
        })
    </script>
</body>

</html>