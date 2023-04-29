<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <title>여행지별_국내여행_횟수(연령대별)</title>
    <style>
        .btn {
            width: 100px;
            border: 0;
            outline: none;
            font-size: 15px;
            margin: 1px;
            background: rgb(243, 156, 18);
            color: white;
            padding: 5px;
            cursor: pointer;
            border-radius: 5px;
        }

        button:hover {
            background-color: cornsilk;
            /* 원하는 배경색으로 변경 */
            color: black;
        }

        h1 {
            text-align: center;
        }
        #myChart {
        width: auto;
        height: auto;
        min-height: 300px;
        max-height: 600px;
        display: flex;
        justify-content: center;
        align-items: center
        }
    </style>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <script src="chart-test.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/chartjs-plugin-datalabels@0.7.0"></script>
    <script src="https://cdn.jsdelivr.net/npm/chartjs-plugin-datalabels"></script>
</head>

<body>
    <h1>여행지별_국내여행_횟수(연령대별)</h1>
    <canvas id="myChart"></canvas>
    <br>
    <div style="text-align: center;">
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
                labels: ["15~19세", "20대", "30대", "40대", "50대", "60대", "70세 이상"],
                datasets: [{
                    label: '방문횟수',
                    fill: true,
                    backgroundColor: ['rgba(230, 126, 34, 0.2)', 'rgba(241, 196, 15, 0.2)', 'rgba(52, 152, 219, 0.2)', 'rgba(46, 204, 113, 0.2)', 'rgba(155, 89, 182, 0.2)', 'rgba(26, 188, 156, 0.2)', 'rgba(231, 76, 60, 0.2)'],
                    borderColor: ['rgba(152, 8, 8)'],
                    borderWidth: 1,
                    data: [20, 120, 380, 50, 180, 30, 43] // 1차원 형식으로 넣어줘야함(여기에 바로 데이터-2차원를 넣어주면 차트형식이 이상해짐)
                }]
            };

            // 차트 초기 설정
              var ctx = document.getElementById("myChart").getContext("2d");
            var myChart = new Chart(ctx, {
                type: "line",
                data: data,
                options: {
                    responsivre: true,
                    maintainAspectRatio: false,
                    scales: {
                        y: {
                            beginAtZero: true,
                            min: 0,
                            max: null
                        }
                    },
                    responsive: true,
                    title: {
                        display: true,
                        text: "여행지별_국내여행_횟수(연령대별)"
                    },
                    elements: {
                        point: {
                            radius: 10 // 점의 크기 설정
                        }
                    },
                    animations: {
                        tension: {
                            duration: 1000,
                            easing: 'linear',
                            from: 1,
                            to: 0,
                            loop: true
                        }
                    },
                    plugins: {
                        legend: {
                            display: false
                        }
                    }
                }
            });
        // 버튼 클릭 이벤트 리스너
        // 버튼 id와 대응하는 데이터 인덱스를 객체 배열로 정의
        var chartData = [
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
            [809, 3537, 2719, 2327, 1957, 1187, 722], // 서울 수치
            [457, 2873, 839, 2057, 289, 846, 476], // 부산 수치
            [131, 839, 707, 814, 744, 509, 264], // 대구 수치
            [317, 2057, 1749, 2144, 1700, 857, 317], // 인천 수치
            [85, 289, 355, 424, 362, 201, 90], // 광주 수치
            [97, 846, 946, 930, 1025, 529, 229], // 대전 수치
            [103, 476, 1003, 859, 885, 627, 242], // 울산 수치
            [140, 360, 411, 435, 274, 120, 143], // 세종 수치
            [1980, 10679, 10872, 11091, 9898, 6262, 2618], // 경기 수치
            [646, 4544, 5283, 5853, 5063, 3328, 705], // 강원 수치
            [180, 1370, 1846, 1894, 2544, 1601, 711], // 충북 수치
            [473, 2811, 3800, 4631, 4235, 2311, 886], // 충남 수치
            [422, 2495, 2655, 2876, 3058, 1740, 592], // 전북 수치
            [698, 3736, 3632, 4218, 4043, 2854, 949], // 전남 수치
            [694, 3289, 4656, 4823, 5140, 2933, 1100], // 경북 수치
            [443, 3085, 4725, 5661, 5648, 3217, 730], // 경남 수치
            [174, 2261, 2740, 2500, 2024, 1159, 240] // 제주 수치
        ];
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