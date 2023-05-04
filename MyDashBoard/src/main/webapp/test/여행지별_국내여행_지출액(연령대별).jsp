<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <title>여행지별_국내여행_지출액(연령대별)</title>

    <style>
    
     #chartContainer {
      display: flex;
      justify-content: left;
      margin-left: 4%;
      height: 600px;
    }
        .regionClass {
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
            /* 원하는 배경색으로 변경, */
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
        justify-content: left;
      	margin-left: 4%;
      	height: 600px;
        align-items: center
        }
        
        #regionButtons {
     	text-align: center;
   		 }	
   		 
    .savebox{
    margin-left: 630px;
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
    <h1>여행지별_국내여행_지출액(연령대별)</h1>
    
    
  		<div id="chartContainer">
    	<span id="regionButtons">
        <button class="regionClass" data-region="서울" id="seoulBtn">서울</button>
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
       </span>
	<canvas id="myChart"></canvas>   
    </div>
    <br>
    <div class="savebox">
    <input type="text" name="saveName"  placeholder="저장명을 입력해주세요">
    <input type = "hidden" name = "fileName" value ="22">
    <input type = "hidden" name = "chartType" value ="line">
	<input type="hidden" name="region" value="" id="regionInput">
    <input type="submit" value="저장" id = "save">
    </div>
    </form>
    </div>
    
    <!-- 지역 버튼 눌렀을 때 버튼에 따라 지역값 넣는 함수 -->
	<script type="text/javascript" src="region.js"></script>
    
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
                        text: "여행지별_국내여행_지출액(연령대별)"
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
                [57, 287, 268, 161, 136, 75, 52], // 서울 수치
                [65, 448, 366, 230, 165, 66, 34], // 부산 수치
                [12, 93, 62, 67, 80, 38, 17], // 대구 수치
                [11, 153, 125, 163, 121, 62, 16], // 인천 수치
                [6, 25, 40, 41, 27, 22, 6], // 광주 수치
                [5, 65, 84, 71, 99, 38, 15], // 대전 수치
                [6, 30, 81, 80, 54, 38, 13], // 울산 수치
                [14, 22, 20, 22, 15, 6, 7], // 세종 수치
                [99, 677, 666, 625, 534, 299, 124], // 경기 수치
                [85, 652, 727, 758, 653, 445, 71], // 강원 수치
                [12, 151, 160, 157, 213, 134, 54], // 충북 수치
                [38, 308, 354, 396, 361, 194, 72], // 충남 수치
                [36, 258, 252, 259, 274, 149, 35], // 전북 수치
                [54, 401, 376, 388, 408, 277, 84], // 전남 수치
                [45, 305, 455, 374, 504, 239, 70], // 경북 수치
                [26, 307, 434, 465, 476, 253, 41], // 경남 수치
                [70, 1173, 1468, 1047, 894, 516, 100] // 제주 수치
            ];
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