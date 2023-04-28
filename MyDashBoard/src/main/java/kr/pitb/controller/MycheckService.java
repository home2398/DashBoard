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
	
	UserDAO dao = new UserDAO();
	
	String select_fileID = dao.select_fileID(fileName);
	
	String saveName = request.getParameter("saveName");
	HttpSession session = request.getSession();
	String id = ((UserVO)session.getAttribute("User")).getId();
	
	System.out.println("fileName >> " + fileName);
	System.out.println("saveName >> " + saveName);
	System.out.println("저장된 id >>> "+id);
	
	UserVO vo = new UserVO();
	vo.setId(id);
	vo.setSaveName(saveName);
	vo.setFileId(select_fileID);
	
	int row = dao.save(vo);

	if (row > 0) {
		return "redirect:/GoMain.do";
	} else {
		return "redirect:/GoMain.do";
	}
	
	
}
}
