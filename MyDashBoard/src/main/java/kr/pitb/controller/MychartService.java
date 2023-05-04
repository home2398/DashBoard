package kr.pitb.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.pitb.model.UserDAO;
import kr.pitb.model.UserVO;

public class MychartService  implements Command {
	//메인에서 마이 넘어갈때 로그인 한 사람만 넘어갈 수 있도록
public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	//
	HttpSession session = request.getSession();
	String id = ((UserVO)session.getAttribute("User")).getId();
	
	UserDAO dao = new UserDAO();
	String result = dao.mychart(id);
	
	if(result!=null) {
		 return "redirect:/GoMypage.do";
	}
	else {
		return "redirect:/GoSign-in.do"; 
	}
	
}
}