<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <title>여행지별_관광여행_재방문_의향(가구소득)</title>

    <style>
    	.savebox {
    		margin-left: 630px;
    	}
    	
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
            border: 0;
            outline: none;
            font-size: 20px;
            margin: 10px;
            background: rgb(243, 156, 18);
            color: white;
            padding: 10px;
            cursor: pointer;
            border-radius: 10px;
        }

        h1{
            text-align: center;
        }
    </style>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.7.1/chart.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <script src="chart-test.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/chartjs-plugin-datalabels@0.7.0"></script>
    <script src="https://cdn.jsdelivr.net/npm/chartjs-plugin-datalabels"></script>
</head>

<body>
<div id="contentDiv">
<form onsubmit="return false" method="post">
    <h1>여행지별_관광여행_재방문_의향(가구소득)</h1>
    <div class="chart-container">
        <canvas id="myChart"></canvas>
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
    <br>
    <div class="savebox">
    <input type="text" name="saveName"  placeholder="차트 이름을 입력하세요">
    <input type = "hidden" name = "fileName" value ="13">
    <input type = "hidden" name = "chartType" value ="bar">
    <input type="submit" value="저장" id = "save">
    </div>
    </form>
    </div>
    
    <script>
        document.addEventListener("DOMContentLoaded", function () {
            // 통계 데이터
            var data = {
                labels: ["100만원 미만", "100~200만원 미만", "200~300만원 미만", "300~400만원 미만", "400~500만원 미만", "500~600만원 미만", "600만원 이상"],
                datasets: [{
                    label: '지출액',
                    backgroundColor: ['rgba(230, 126, 34, 0.2)', 'rgba(241, 196, 15, 0.2)', 'rgba(52, 152, 219, 0.2)', 'rgba(46, 204, 113, 0.2)', 'rgba(155, 89, 182, 0.2)', 'rgba(26, 188, 156, 0.2)', 'rgba(231, 76, 60, 0.2)'],
                    borderColor: ['rgba(230, 126, 34, 0.2)', 'rgba(241, 196, 15, 0.2)', 'rgba(52, 152, 219, 0.2)', 'rgba(46, 204, 113, 0.2)', 'rgba(155, 89, 182, 0.2)', 'rgba(26, 188, 156, 0.2)', 'rgba(231, 76, 60, 0.2)'],
                    borderWidth: 1,
                    data: [20, 120, 400, 50, 180, 30, 43] // 1차원 형식으로 넣어줘야함(여기에 바로 데이터-2차원를 넣어주면 차트형식이 이상해짐)
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
                            max: null,
                            grid: {
                                display: false
                            }
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
                [82.4, 72, 72.2, 75.5, 76.2, 74.5, 75.2], // 서울에 대한 데이터
                [81.2, 77.2, 77.6, 77.3, 75.3, 77.5, 77.5], // 부산에 대한 데이터
                [73.2, 69.4, 77.3, 75.7, 69.1, 73, 77.8],     // 대구 데이터
                [69.6, 75.5, 73.7, 72.5, 76.7, 75, 73.7],      // 인천
                [80.5, 87.3, 80.7, 83, 84.1, 78.9, 81.2],     // 광주 ~~~~~ 위 html 코드 div안쪽의 지역버튼 순서대로
                [68.2, 64.6, 70.1, 73.6, 74.6, 74.8, 74.7],
                [80.5, 79.7, 76.2, 74.6, 74.3, 77.1, 76.4],
                [67.8, 82.8, 74.7, 69.8, 70.3, 77.1, 72.9],
                [75.4, 76.3, 75.9, 75.1, 75.2, 76.1, 75.8],
                [79.7, 77.9, 77.5, 77.3, 74.6, 77.6, 77.8], // 강원
                [79.9, 77.4, 71.4, 74, 75.2, 77.2, 78.8],       // 충북
                [72.9, 72.1, 75.6, 76.8, 76.9, 77.2, 76.8],
                [77.9, 80.2, 79.4, 81.5, 79.6, 82.7, 78.6],
                [77.6, 81.9, 79.9, 80.5, 82.2, 83.1, 80.8],
                [77.4, 75.5, 75.7, 76, 76.9, 75.9, 76.9],
                [77.5, 78.5, 76.2, 76.3, 78, 78.6, 77.3],
                [77.5, 80.2, 79.3, 78.3, 79.6, 82.1, 80.4]  // 제주
            ]

            // updateChart 함수 정의
            function updateChart(index) {
                // 데이터 업데이트
                myChart.data.datasets[0].data = clickData[index];
                myChart.update(); // 차트 업데이트
            }
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