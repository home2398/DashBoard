package kr.pitb.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import kr.pitb.model.MemberVO;

public class Ajax implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		// 1. 한글 인코딩 잡아주기
		response.setContentType("text/html;charset=UTF-8");
		// 2. 화면에 출력하는 도구 꺼내오기
		PrintWriter out = response.getWriter();
		// 3. 화면에 출력하기
		// out.print("{\"email\":\"admin\",\"tel\":\"01012345678\"}");
		// -> Gson 라이브러리 사용
		MemberVO vo = new MemberVO("배지훈", "12345", "01012345789", "광주");
		Gson gson = new Gson();
		out.print(gson.toJson(vo));
		
		// gson.toJson(객체)
		//-> java의 객체를 자바스크립트 json 구조로 변경
		//-> 객체 : 우리가 만든 자료형 , ArrayList 등 넣어도 됨
		
		
		
		
		return null;
	}

}
