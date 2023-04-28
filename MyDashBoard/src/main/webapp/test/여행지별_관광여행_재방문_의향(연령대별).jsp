<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <title>여행지별_관광여행_재방문_의향(연령대별)</title>

    <style>
        .btn {
            width: 100px;
            border: 1;
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
            max-width: 2000px;
            min-width: 1000px;

            max-height: 800px;
            min-height: 700px;
        }
    </style>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <script src="chart-test.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/chartjs-plugin-datalabels@0.7.0"></script>
    <script src="https://cdn.jsdelivr.net/npm/chartjs-plugin-datalabels"></script>
</head>

<body>
<div id="contentDiv">
<form onsubmit="return false" method="post">
    <h1>여행지별_관광여행_재방문_의향(연령대별)</h1>
    <input type="checkbox" name="saveName" value="01-Gj">
    <input type = "hidden" name = "fileName" value ="3">
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
    <input type="submit" value="저장" id = "save">
    </form>
    </div>
    
    <script>
        document.addEventListener("DOMContentLoaded", function () {
            // 통계 데이터
            var data = {
                labels: ["15~19세", "20대", "30대", "40대", "50대", "60대", "70세 이상"],
                datasets: [{
                    label: '지출액',
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
                        text: "여행지별_관광여행_재방문_의향(연령대별)"
                    },
                    elements: {
                        point: {
                            radius: 10 // 점의 크기 설정
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
            [75.3, 76.2, 72, 75.9, 75.6, 72.7, 79.4], // 서울 수치
            [75.7, 78.1, 77, 76.4, 76.5, 76.9, 78.2], // 부산 수치
            [73.1, 73.6, 75.1, 74.3, 72.7, 73.9, 72.3], // 대구 수치
            [72.7, 74.4, 73.3, 74.5, 75.3, 74.3, 68.4], // 인천 수치
            [91.8, 78, 84.5, 80.4, 80.5, 82, 84.5], // 광주 수치
            [73.6, 74.2, 72.9, 73, 74.4, 73.2, 68.2], // 대전 수치
            [70.9, 74.6, 75.3, 75.7, 76.6, 77.9, 76.5], // 울산 수치
            [71.8, 73.4, 74.8, 76.6, 61.1, 75, 72.8], // 세종 수치
            [75, 75.6, 75.8, 75.7, 75.3, 76.3, 75.2], // 경기 수치
            [76.8, 77.5, 77.7, 76.4, 76.9, 77.8, 75.8], // 강원 수치
            [69.7, 76.5, 72.4, 76, 77.4, 76.5, 75.9], // 충북 수치
            [74, 77.2, 76.2, 75.6, 78, 76.8, 74.2], // 충남 수치
            [79.2, 81.3, 81.1, 80.8, 79.7, 79.8, 78.3], // 전북 수치
            [81.9, 83.3, 81.3, 80.4, 80.9, 81.1, 80.4], // 전남 수치
            [74.6, 75, 77.1, 76.6, 76.5, 76.5, 75.7], // 경북 수치
            [74.5, 78.7, 77, 77.4, 77.3, 77, 76.9], // 경남 수치
            [87.8, 82.2, 79.3, 80.7, 79.3, 77.9, 77.9] // 제주 수치
            ];
            // updateChart 함수 정의
            function updateChart(index) {
                // 데이터 업데이트
                myChart.data.datasets[0].data = clickData[index];
                myChart.update(); // 차트 업데이트
            }
        })
        
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
    </script>
</body>

</html>