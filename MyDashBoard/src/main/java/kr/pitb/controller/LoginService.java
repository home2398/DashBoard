package kr.pitb.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.pitb.model.UserDAO;
import kr.pitb.model.UserVO;

public class LoginService implements Command {

	public String execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
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
		else {
			return "redirect:/GoSign-in.do"; 
		}
		return "redirect:/GoMain.do";
	}

	
}
