package kr.pitb.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.pitb.model.UserDAO;
import kr.pitb.model.UserVO;

public class MycheckService implements Command {
	
public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	String fileName = request.getParameter("fileName");
	System.out.println("fileName >> " + fileName);
	
	UserDAO dao = new UserDAO();
	String saveName = request.getParameter("saveName");
	HttpSession session = request.getSession();
	String id = ((UserVO)session.getAttribute("User")).getId();
	
	
	UserVO vo = new UserVO();
	vo.setId(id);
	vo.setSaveName(saveName);
	vo.setFileId(fileName);
	
	int row = dao.save(vo);

	return null;	
	
}
}
