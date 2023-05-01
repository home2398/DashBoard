<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <title>1인_평균_여행지별_국내여행_지출액__만15세이상_전국민(가구소득)</title>

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

        .regionClass {
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
    <h1>1인_평균_여행지별_국내여행_지출액__만15세이상_전국민(가구소득)</h1>
    <div class="chart-container">
        <canvas id="myChart" width="50" height="25"></canvas>
    </div>
    <div id="regionButtons" class="btn-container">
        <button class="btn btn-primary regionClass" data-region="서울" id="seoulBtn">서울</button>
        <button class="regionClass" data-region="부산" id="busanBtn">부산</button>
        <button class="regionClass" data-region="대구" id="daeguBtn">대구</button>
        <button class="regionClass" data-region="인천" id="incheonBtn">인천</button>
        <button class="regionClass" data-region="광주" id="gwangjuBtn">광주</button>
        <button class="regionClass" data-region="대전" id="daejeonBtn">대전</button>
        <button class="regionClass" data-region="울산" id="ulsanBtn">울산</button>
        <button class="regionClass" data-region="세종" id="sejongBtn">세종</button>
        <button class="regionClass" data-region="경기" id="gyeonggiBtn">경기</button>
        <button class="regionClass" data-region="강원" id="gangwonBtn">강원</button>
        <button class="regionClass" data-region="충북" id="chongbukBtn">충북</button>
        <button class="regionClass" data-region="충남" id="chongnamBtn">충남</button>
        <button class="regionClass" data-region="전북" id="jeonbukBtn">전북</button>
        <button class="regionClass" data-region="전남" id="jeonnamBtn">전남</button>
        <button class="regionClass" data-region="경북" id="gyongbukBtn">경북</button>
        <button class="regionClass" data-region="경남" id="gyongnamBtn">경남</button>
        <button class="regionClass" data-region="제주" id="jejuBtn">제주</button>
    </div>
    <br>
    <div class="savebox">
	<input type="text" name="saveName"  placeholder="차트 이름을 입력하세요">
    <input type = "hidden" name = "fileName" value ="1">
    <input type="hidden" name ="chartType" value="bar">
    <input type="hidden" name="region" value="" id="regionInput">
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
                    data: [8, 13, 11, 10, 12, 13, 14], // 1차원 형식으로 넣어줘야함(여기에 바로 데이터-2차원를 넣어주면 차트형식이 이상해짐)
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