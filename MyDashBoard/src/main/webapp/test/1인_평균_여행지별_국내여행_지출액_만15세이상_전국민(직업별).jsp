<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <title>1인_평균_여행지별_국내여행_지출액__만15세이상_전국민(직업별)</title>
    <style>
        .chart-container {
            width: auto;
            height: 600px;
        }

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
    <h1>1인_평균_여행지별_국내여행_지출액__만15세이상_전국민(직업별)(단위 : 만원)</h1>
    <div class="chart-container">
        <canvas id="barChart"></canvas>
    </div>
    <br>
    <div style="text-align: center;">
        <button class="btn" onclick="updateChart('서울')">서울</button>
        <button class="btn" onclick="updateChart('부산')">부산</button>
        <button class="btn" onclick="updateChart('대구')">대구</button>
        <button class="btn" onclick="updateChart('인천')">인천</button>
        <button class="btn" onclick="updateChart('광주')">광주</button>
        <button class="btn" onclick="updateChart('대전')">대전</button>
        <button class="btn" onclick="updateChart('울산')">울산</button>
        <button class="btn" onclick="updateChart('세종')">세종</button>
        <button class="btn" onclick="updateChart('경기')">경기</button>
        <button class="btn" onclick="updateChart('강원')">강원</button>
        <button class="btn" onclick="updateChart('충북')">충북</button>
        <button class="btn" onclick="updateChart('충남')">충남</button>
        <button class="btn" onclick="updateChart('전북')">전북</button>
        <button class="btn" onclick="updateChart('전남')">전남</button>
        <button class="btn" onclick="updateChart('경북')">경북</button>
        <button class="btn" onclick="updateChart('경남')">경남</button>
        <button class="btn" onclick="updateChart('제주')">제주</button>
    </div>
    <input type="text" name="saveName"  placeholder="차트 이름을 입력하세요">
    <input type = "hidden" name = "fileName" value ="5">
    <input type="submit" value="저장" id = "save">
    </form>
    </div>

    <script>
    document.addEventListener("DOMContentLoaded", function () {
        // 표 데이터
        const data = {
            labels: ["임금봉급근로자", "고용원있는사업주", "고용원없는자영업자", "무급가족 종사자", "전업주부", "학생", "기타"],
            datasets: [{
                label: '평균 지출액',
                data: [],
                backgroundColor: ['rgba(230, 126, 34, 0.2)', 'rgba(241, 196, 15, 0.2)', 'rgba(52, 152, 219, 0.2)', 'rgba(46, 204, 113, 0.2)', 'rgba(155, 89, 182, 0.2)', 'rgba(26, 188, 156, 0.2)', 'rgba(231, 76, 60, 0.2)'],
                borderColor: ['rgba(230, 126, 34, 0.2)', 'rgba(241, 196, 15, 0.2)', 'rgba(52, 152, 219, 0.2)', 'rgba(46, 204, 113, 0.2)', 'rgba(155, 89, 182, 0.2)', 'rgba(26, 188, 156, 0.2)', 'rgba(231, 76, 60, 0.2)'],
                borderWidth: 1
            }]
        };

        // 차트 옵션
        const options = {
            responsivre: true,
            maintainAspectRatio: false,
            indexAxis: 'y',
            scales: {
                x: {
                    beginAtZero: true,
                    max: null // y축 최댓값 설정
                }
            },
            plugins: {
                legend: {
                    display: false
                }
            }
        };

        // 바 차트 생성 함수
        function createBarChart(ctx, data, options) {
            return new Chart(ctx, {
                type: 'bar',
                data: data,
                options: options
            });
        }

        // 초기 차트 생성
        const ctx = document.getElementById('barChart').getContext('2d');
        const barChart = createBarChart(ctx, data, options);

        // 차트 업데이트 함수
        function updateChart(selectedRegion) {
            // 선택된 지역에 따른 데이터 업데이트
            const regionData = regionDataMap[selectedRegion];
            barChart.data.datasets[0].data = regionData;
            barChart.update(); // 차트 업데이트
        }

        // 선택된 지역에 따른 데이터 매핑
        const regionDataMap = {
            '서울': [29, 20, 17, 17, 10, 26, 22],
            '부산': [41, 31, 14, 8, 15, 43, 21],
            '대구': [9, 3, 10, 10, 4, 5, 6],
            '인천': [19, 17, 8, 4, 11, 9, 11],
            '광주': [4, 7, 4, 3, 3, 2, 1],
            '대전': [11, 15, 6, 8, 5, 4, 5],
            '울산': [9, 16, 4, 2, 5, 4, 3],
            '세종': [3, 0, 1, 1, 1, 4, 2],
            '경기': [88, 134, 40, 24, 48, 48, 27],
            '강원': [95, 142, 59, 26, 56, 43, 36],
            '충북': [24, 32, 17, 14, 14, 8, 16],
            '충남': [48, 30, 31, 22, 31, 31, 14],
            '전북': [35, 26, 24, 31, 17, 21, 12],
            '전남': [52, 34, 47, 40, 30, 33, 21],
            '경북': [49, 64, 48, 38, 32, 33, 23],
            '경남': [55, 43, 44, 28, 35, 23, 16],
            '제주': [155, 172, 79, 32, 94, 64, 46]
        };
        
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
