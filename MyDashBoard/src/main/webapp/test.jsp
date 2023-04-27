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
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
</head>
<body>
	<button id="genderShowType">성별분류</button>

	<%
		try {
		// 데이터베이스를 접속하기 위한 드라이버 SW 로드
		Class.forName("oracle.jdbc.driver.OracleDriver");
		// 데이터베이스에 연결하는 작업 수행
		conn = DriverManager.getConnection(url, user, password);
		// 쿼리를 생성gkf 객체 생성
		stmt = conn.createStatement();
		// 쿼리 생성
		rs = stmt.executeQuery(sql);
	%>
	<%
			List<String> values = new ArrayList<>();
			List<String> index = new ArrayList<>();
			while (rs.next()) {
				String value = rs.getString("fileName");
				String fileId = rs.getString("fileId");
				values.add(value);
				index.add(fileId);
				%>
				<button class="genderClass" id="genderBtn<%=fileId%>" style="display: none"><%=value%></button>
		<%}
	%>
				
	
	<!-- values 배열의 첫 번째 값을 출력합니다. -->
	
	<!--  
  		String firstValue = values.get(0); // 첫 번째 값을 가져옵니다.
  		String secondValue = values.get(1); // 첫 번째 값을 가져옵니다.
  		String thirdValue = values.get(2); // 첫 번째 값을 가져옵니다.
  		out.println("첫 번째 값: " + firstValue);
  		out.println("두 번째 값: " + secondValue);
  		out.println("세 번째 값: " + thirdValue);
	-->
		
	
	<%
	} catch (Exception e) {
	e.printStackTrace();
	} finally {
	try {
	if (rs != null) {
		rs.close();
	}
	if (stmt != null) {
		stmt.close();
	}
	if (conn != null) {
		conn.close();
	}
	} catch (Exception e) {
	e.printStackTrace();
	}
	}
	%>


<div class="explanRow" style="display: none;">
							<div class="col-xl-3 col-sm-6 mb-xl-0 mb-4">
								<div class="card select-file2">
									<div class="card-header p-3 pt-2 csize2">
										<div class="pt-1 cpadding2">
											<p class="text-sm mb-0 text-capitalize">여기는 지울지말지</p>
											<h4 class="mb-0">이런저런 파일입니다/글자가 깨지는듯? 글씨체........h4는 조금
												큰듯</h4>
										</div>
									</div>
								</div>
							</div>
						</div>


<div id="result"></div>
<script type="text/javascript">
$(document).on("click", "#genderShowType", function(){
	    $(".genderClass").show();
	    $(this).attr("id", "genderHideType");
	    $(this).removeClass("genderShowType");
	  });

$(document).on("click", "#genderHideType", function(){
	    $(".genderClass").hide();
	    $(this).attr("id", "genderShowType");
	    $(this).removeClass("genderHideType");
	  });

	




	$(document).ready(function(){
		
		// 버튼에 대한 이벤트 핸들러 작성
		$(".genderClass").click(function(){
			var buttonId = $(this).attr("id");
			
			if(buttonId === "genderBtn27"){
				alert("첫번째 버튼 클릭 성공")
				$('.explanRow').show();
			}
			
			
			
			
		})
		
		
		
		
	});
	



</script>
<!-- 각 버튼에 클릭 이벤트 리스너를 추가합니다. -->

  <!-- 
	<script type="text/javascript">
		$("#loadBtn").click(function() {
			$(".genderBtn").show();
		});
	</script>
	 -->
</body>
</html>