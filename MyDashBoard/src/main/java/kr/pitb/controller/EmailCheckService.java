package kr.pitb.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.pitb.model.MemberDAO;
import kr.pitb.model.MemberVO;

public class EmailCheckService implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String email = request.getParameter("receive_email");
		
		MemberVO vo = new MemberVO();
		vo.setEmail(email);
		
		MemberDAO dao = new MemberDAO();
		
		String resultEmail = dao.emailcheck(vo);
		
		// ajax 통신 방식을 활용해서 결과값을 반환
		// 화면에 출력(중요!)
		// Servlet 에서 html 화면에 출력하려면?
		
		// 4-0) 화면에 출력하기 전에 한글인코딩 잡아주기
		response.setContentType("text/html;charset=UTF-8");
		
		// 4-1) 화면에 출력을 도와주는 도구 꺼내오기
		PrintWriter out = response.getWriter();
		
		// 4-2) 화면에 결과값 출력해주기
		out.print(resultEmail);
		
		return null;
	}

}
