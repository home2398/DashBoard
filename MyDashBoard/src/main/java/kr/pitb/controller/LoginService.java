package kr.pitb.controller;

import java.io.IOException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.pitb.model.MemberDAO;
import kr.pitb.model.MemberVO;

public class LoginService implements Command {
	
	// FrontController 의 업무를 보조하는 역할
	// POJO
	// Plain Old Java Object
	
	public String execute(HttpServletRequest request, HttpServletResponse response) throws IOException {


		String email = request.getParameter("email");
		String pw = request.getParameter("pw");
//		String tel = request.getParameter("tel");
//		String pw = request.getParameter("pw");

		MemberVO vo = new MemberVO();
		vo.setEmail(email);
		vo.setPw(pw);

		MemberDAO dao = new MemberDAO();

		MemberVO result = dao.login(vo);

		if (result != null) {

			HttpSession session = request.getSession();
			session.setAttribute("member", result);
		}
		return "redirect:/GoMain.do";
//		response.sendRedirect("login_success.jsp");

	
	}
	
	

}
