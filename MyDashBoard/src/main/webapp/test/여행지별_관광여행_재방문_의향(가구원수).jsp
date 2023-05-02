<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <title>여행지별_관광여행_재방문_의향(가구원수)</title>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.7.1/chart.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <script src="chart-test.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/chartjs-plugin-datalabels@0.7.0"></script>
    <script src="https://cdn.jsdelivr.net/npm/chartjs-plugin-datalabels"></script>
</head>
<style>
	.savebox {
    		margin-left: 630px;
    	}

	#myChart {
        display: flex;
        justify-content: center;
        height: 700px;
    }
    .region-button {
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
</style>
<body>
<div id="contentDiv">
<form onsubmit="return false" method="post">
    <h1>여행지별_관광여행_재방문_의향(가구원수)(단위 : %)</h1>
    <div style="text-align: center;">
        <button class="region-button" value="서울">서울</button>
        <button class="region-button" value="부산">부산</button>
        <button class="region-button" value="대구">대구</button>
        <button class="region-button" value="인천">인천</button>
        <button class="region-button" value="광주">광주</button>
        <button class="region-button" value="대전">대전</button>
        <button class="region-button" value="울산">울산</button>
        <button class="region-button" value="세종">세종</button>
        <button class="region-button" value="경기">경기</button>
        <button class="region-button" value="강원">강원</button>
        <button class="region-button" value="충북">충북</button>
        <button class="region-button" value="충남">충남</button>
        <button class="region-button" value="전북">전북</button>
        <button class="region-button" value="전남">전남</button>
        <button class="region-button" value="경북">경북</button>
        <button class="region-button" value="경남">경남</button>
        <button class="region-button" value="제주">제주</button>
    </div>
    <br>
    <div>
        <canvas id="myChart"></canvas>
    </div>
    <br>
    <div class="savebox">
    <input type="text" name="saveName"  placeholder="차트 이름을 입력하세요">
    <input type = "hidden" name = "fileName" value ="14">
    <input type = "hidden" name = "chartType" value ="polarArea">
    <input type="submit" value="저장" id = "save">
    </div>
    </form>
    </div>
    
    <script>
    	document.addEventListener("DOMContentLoaded", function () {
    
        // 데이터 정의
        var data = {
            labels: ["1인", "2인", "3인 이상"],
            datasets: [{
                label: "여행횟수",
                data: [],
                backgroundColor: [
                    'rgba(255, 99, 132, 0.5)',
                    'rgba(54, 162, 235, 0.5)',
                    'rgba(255, 206, 86, 0.5)',
                    'rgba(75, 192, 192, 0.5)',
                    'rgba(153, 102, 255, 0.5)',
                    'rgba(255, 159, 64, 0.5)',
                    'rgba(255, 99, 132, 0.5)',
                    'rgba(54, 162, 235, 0.5)',
                    'rgba(255, 206, 86, 0.5)',
                    'rgba(75, 192, 192, 0.5)',
                    'rgba(153, 102, 255, 0.5)',
                    'rgba(255, 159, 64, 0.5)',
                    'rgba(255, 99, 132, 0.5)',
                    'rgba(54, 162, 235, 0.5)',
                    'rgba(255, 206, 86, 0.5)',
                    'rgba(75, 192, 192, 0.5)',
                ],
                borderColor: [
                    'rgba(255, 99, 132, 1)',
                    'rgba(54, 162, 235, 1)',
                    'rgba(255, 206, 86, 1)',
                    'rgba(75, 192, 192, 1)',
                    'rgba(153, 102, 255, 1)',
                    'rgba(255, 159, 64, 1)',
                    'rgba(255, 99, 132, 1)',
                    'rgba(54, 162, 235, 1)',
                    'rgba(255, 206, 86, 1)',
                    'rgba(75, 192, 192, 1)',
                    'rgba(153, 102, 255, 1)',
                    'rgba(255, 159, 64, 1)',
                    'rgba(255, 99, 132, 1)',
                    'rgba(54, 162, 235, 1)',
                    'rgba(255, 206, 86, 1)',
                    'rgba(75, 192, 192, 1)',
                ],
                borderWidth: 1
            }]
        };

        // 차트 생성
        var ctx = document.getElementById('myChart').getContext('2d');
        var myChart = new Chart(ctx, {
            type: 'polarArea',
            data: data,
            options: {
            	responsive: true,
                maintainAspectRatio: false,
                scales: {
                  r: {
                    min: 60,
                    max: 85
                  }
                }
              }
        });
        // 버튼 클릭시 데이터 갱신
        $(".region-button").click(function () {
            // 선택한 지역의 데이터 가져오기
            var region = $(this).val();
            var regionData = [];

            switch (region) {
                case "서울":
                    regionData = [75.7, 74.1, 75.1];
                    break;
                case "부산":
                    regionData = [76.4, 77.1, 77.3];
                    break;
                case "대구":
                    regionData = [76.4, 74.4, 72.8];
                    break;
                case "인천":
                    regionData = [73.7, 74.7, 74.2];
                    break;
                case "광주":
                    regionData = [82.9, 83.5, 80.7];
                    break;
                case "대전":
                    regionData = [70.4, 73.5, 74.2];
                    break;
                case "울산":
                    regionData = [78.6, 75.7, 75.4];
                    break;
                case "세종":
                    regionData = [72.7, 71.2, 72.8];
                    break;
                case "경기":
                    regionData = [75.1, 76.6, 75.5];
                    break;
                case "강원":
                    regionData = [77.3, 76.5, 77.3];
                    break;
                case "충북":
                    regionData = [72.8, 74.5, 76.9];
                    break;
                case "충남":
                    regionData = [74.6, 76.2, 77.0];
                    break;
                case "전북":
                    regionData = [80.8, 80.9, 80.1];
                    break;
                case "전남":
                    regionData = [79.5, 82.3, 81.3];
                    break;
                case "경북":
                    regionData = [75.3, 77.2, 76.2];
                    break;
                case "경남":
                    regionData = [76.2, 77.4, 77.5];
                    break;
                case "제주":
                    regionData = [79.9, 79.6, 80.4];
                    break;
                default:
                    break;
            }

            // 데이터 업데이트
            myChart.data.datasets[0].data = regionData;
            myChart.update();
        });
        
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