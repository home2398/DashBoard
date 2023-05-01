<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
  <title>여행지별_국내여행_횟수(성별분류)</title>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/chart.js">
  <style>
  	.savebox {
    		margin-left: 630px;
    	}
    	
    #chartContainer {
      display: flex;
      justify-content: center;
      height: 700px;
    }


    button {
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

    #regionButtons {
      text-align: center;
    }

    h1 {
      text-align: center;
    }
  </style>
  <script src="https://cdn.jsdelivr.net/npm/chartjs-plugin-datalabels@2.0.0"></script>
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
  <h1>여행지별_국내여행_횟수(성별분류)</h1>
  <div id="chartContainer">
    <canvas id="chart"></canvas>
  </div>
  <br>
  <div id="regionButtons">
    <button class="btn" data-region="서울">서울</button>
    <button class="btn" data-region="부산">부산</button>
    <button class="btn" data-region="대구">대구</button>
    <button class="btn" data-region="인천">인천</button>
    <button class="btn" data-region="광주">광주</button>
    <button class="btn" data-region="대전">대전</button>
    <button class="btn" data-region="울산">울산</button>
    <button class="btn" data-region="세종">세종</button>
    <button class="btn" data-region="경기">경기</button>
    <button class="btn" data-region="강원">강원</button>
    <button class="btn" data-region="충북">충북</button>
    <button class="btn" data-region="충남">충남</button>
    <button class="btn" data-region="전북">전북</button>
    <button class="btn" data-region="전남">전남</button>
    <button class="btn" data-region="경북">경북</button>
    <button class="btn" data-region="경남">경남</button>
    <button class="btn" data-region="제주">제주</button>
  </div>
  <br>
    <div class="savebox">
  <input type="text" name="saveName"  placeholder="차트 이름을 입력하세요">
    <input type = "hidden" name = "fileName" value ="27">
    <input type="submit" value="저장" id = "save">
    </div>
    </form>
    </div>
  
  <script>
  	document.addEventListener("DOMContentLoaded", function () {
    // 데이터
    const data = {
      labels: ["남자", "여자"],
      datasets: [{
        data: [],
        backgroundColor: [
          'rgba(255, 99, 132, 0.75)',
          'rgba(54, 162, 235, 0.75)',
          'rgba(255, 206, 86, 0.75)',
          'rgba(75, 192, 192, 0.75)',
          'rgba(153, 102, 255, 0.75)',
          'rgba(255, 159, 64, 0.75)',
          'rgba(94, 232, 129, 0.75)'
        ],
        borderWidth: 0
      }]
    };

    // 도넛 차트 생성 함수
    function createDonutChart(data) {
      return new Chart(document.getElementById('chart').getContext('2d'), {
        type: 'doughnut',
        data: data,
        plugins: [ChartDataLabels],
        options: {
          responsive: true,
          maintainAspectRatio: false,
          legend: {
            position: 'right',
            labels: {
              boxWidth: 12
            }
          },
          plugins: {
            datalabels: {
              formatter: (value, context) => {
                return context.chart.data.labels[context.dataIndex]
              }
            }
          }
        }
      });
    }

    // 초기에 도넛 차트 생성
    const chart = createDonutChart(data);

    // 지역 버튼 클릭 이벤트 핸들러
    $('#regionButtons button').on('click', function () {
      const region = $(this).data('region'); // 클릭한 버튼의 data-region 속성값을 가져옴

      // region에 따라 데이터를 업데이트하고 차트를 그림
      switch (region) {
        case '서울':
          data.datasets[0].data = [6887, 6372];
          break;
        case '부산':
          data.datasets[0].data = [5160, 4792];
          break;
        case '대구':
          data.datasets[0].data = [1966, 2041];
          break;
        case '인천':
          data.datasets[0].data = [4836, 4306];
          break;
        case '광주':
          data.datasets[0].data = [1039, 769];
          break;
        case '대전':
          data.datasets[0].data = [2556, 2047];
          break;
        case '울산':
          data.datasets[0].data = [2375, 1819];
          break;
        case '세종':
          data.datasets[0].data = [1071, 812];
          break;
        case '경기':
          data.datasets[0].data = [25879, 27522];
          break;
        case '강원':
          data.datasets[0].data = [12698, 12724];
          break;
        case '충북':
          data.datasets[0].data = [5192, 4954];
          break;
        case '충남':
          data.datasets[0].data = [9435, 9712];
          break;
        case '전북':
          data.datasets[0].data = [7192, 6646];
          break;
        case '전남':
          data.datasets[0].data = [10322, 9807];
          break;
        case '경북':
          data.datasets[0].data = [11475, 11159];
          break;
        case '경남':
          data.datasets[0].data = [11473, 12034];
          break;
        case '제주':
          data.datasets[0].data = [4614, 6483];
          break;

        default:
          // 기본값은 임의의 데이터로 설정
          data.datasets[0].data = [Math.random() * 100, Math.random() * 100, Math.random() * 100, Math.random() * 100, Math.random() * 100, Math.random() * 100, Math.random() * 100];
          break;
      }

      chart.update(); // 차트 업데이트
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
