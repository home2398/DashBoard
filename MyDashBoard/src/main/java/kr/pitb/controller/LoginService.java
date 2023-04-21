package kr.pitb.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.pitb.model.UserDAO;
import kr.pitb.model.UserVO;


@WebServlet("/Login")
public class LoginService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		UserVO vo = new UserVO();
		vo.setId(id);
		vo.setPw(pw);
		
		UserDAO dao = new UserDAO();
		
		UserVO result = dao.login(vo);
		
		if(result!=null) {
			 HttpSession session = request.getSession();
			 session.setAttribute("User", result);
		}
		response.sendRedirect("dashboard.jsp");
		
		
		
		
		
		
		
	}

}
