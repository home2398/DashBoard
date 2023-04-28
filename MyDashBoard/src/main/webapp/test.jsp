<%@page import="java.util.List"%>
<%@page import="com.google.gson.JsonArray"%>
<%@page import="java.awt.Button"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.ArrayList"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%!//변수선언
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;
	// 데이터베이스에 연결
	String url = "jdbc:oracle:thin:@project-db-stu.smhrd.com:1524:XE";
	String user = "cgi_2_230419_4";
	String password = "smhrd4";
	String sql = "select 파일ID as fileId , 원본파일이름 as fileName from csv파일정보 where 원본파일이름 like '%성별분류%' ";%>
<!DOCTYPE html>
<html>
<head>

<style type="text/css">
iframe {
  border: none;
  width: 100%;
  height: 100%;
}

.modal {
  display: none;
  position: fixed;
  z-index: 999;
  left: 0;
  top: 0;
  width: 100%;
  height: 100%;
  overflow: auto;
  background-color: rgba(0, 0, 0, 0.4);
}

.modal-content {
  background-color: white;
  margin: 10% auto;
  padding: 20px;
  border: 1px solid #888;
  width: 80%;
  height: 80%;
  position: relative;
}

.close {
  position: absolute;
  top: 0;
  right: 0;
  font-size: 28px;
  font-weight: bold;
  cursor: pointer;
}




</style>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
<!-- bootstrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
</head>
<body>
<!-- incomeBtn1 버튼 -->
<button class="incomeClass" id="incomeBtn1">소득구간 1</button>
<button class="incomeClass" id="incomeBtn2">소득구간 2</button>
<button class="incomeClass" id="incomeBtn3">소득구간 3</button>

<!-- 소득가구별 모달 -->
<div id="incomeModal" class="modal">
  <div class="modal-content">
    <span class="close" onclick="closeModal()">&times;</span>
    <iframe id="incomeIframe" frameborder="0"></iframe>
  </div>
</div>


<script>
$(document).ready(function(){
    // 소득구간별 버튼에 대한 이벤트 핸들러 작성
    $(".incomeClass").click(function(){
        var buttonId = $(this).attr("id");
        var filePath;
        if(buttonId === "incomeBtn1"){
            filePath = "가구소득별/여행지별_국내여행_횟수(가구소득).jsp";
        } else if(buttonId === "incomeBtn2") {
            filePath = "가구소득별/여행지별_국내여행_지출액(가구소득).jsp";
        } else if(buttonId === "incomeBtn3") {
            filePath = "가구소득별/여행지별_관광여행_재방문_의향(가구소득).jsp";
        } else {
            // ...
        }
        $("#incomeIframe").attr("src", filePath);
        $('#incomeModal').show();
    });
});

function closeModal(){
	document.getElementById("incomeModal").style.display="none";
}
</script>
</body>
</html>