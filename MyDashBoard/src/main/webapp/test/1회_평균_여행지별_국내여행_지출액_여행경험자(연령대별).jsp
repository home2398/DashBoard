<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <title>1회_평균_여행지별_국내여행_지출액__여행경험자(연령대별)</title>
    <style>
    	.savebox {
    		margin-left: 630px;
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
            background-color: cornsilk; /* 원하는 배경색으로 변경 */
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
    <h1>1회_평균_여행지별_국내여행_지출액__여행경험자(연령대별)</h1>
    <canvas id="myChart"></canvas>
    <br>
    <div style="text-align: center;">
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
    </div>
    <br>
    <div class="savebox">
    <input type="text" name="saveName"  placeholder="차트 이름을 입력하세요">
    <input type = "hidden" name = "fileName" value ="10">
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
                    label: '1회 평균 여행지별 지출액(15세이상 전국민)',
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
                        text: "1회_평균_여행지별_국내여행_지출액__여행경험자(연령대별)"
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
                [24, 42, 38, 20, 16, 11, 9],
                [28, 65, 52, 28, 19, 9, 6],
                [5, 14, 9, 8, 9, 5, 3],
                [5, 22, 18, 20, 14, 9, 3],
                [3, 4, 6, 5, 3, 3, 1],
                [2, 9, 12, 9, 12, 5, 3],
                [2, 4, 11, 10, 6, 5, 2],
                [6, 3, 3, 3, 2, 1, 1],
                [43, 98, 94, 76, 62, 43, 22],
                [37, 94, 103, 92, 76, 64, 13],
                [5, 22, 23, 19, 25, 19, 9],
                [16, 45, 50, 48, 42, 28, 13],
                [15, 37, 36, 32, 32, 21, 6],
                [23, 58, 53, 47, 48, 40, 15],
                [19, 44, 65, 46, 59, 34, 12],
                [11, 44, 62, 57, 56, 36, 7],
                [30, 170, 208, 128, 104, 74, 18]
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