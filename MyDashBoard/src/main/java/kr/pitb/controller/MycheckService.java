package kr.pitb.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.pitb.model.UserDAO;
import kr.pitb.model.UserVO;

public class MycheckService implements Command {
	//내가 체크한 차트를 관심파일내역 데이터베이스에 저장하기
public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	HttpSession session = request.getSession();
	String id = ((UserVO)session.getAttribute("User")).getId();
	
	String saveName = request.getParameter("saveName");
	String fileName = request.getParameter("fileName");
	String chartType = request.getParameter("chartType");
	String region = request.getParameter("region");
	
	
	
	
	
	UserVO vo = new UserVO();
	vo.setId(id);
	vo.setSaveName(saveName);
	vo.setFileId(fileName);
	vo.setChartType(chartType);
	vo.setRegion(region);
	
	UserDAO dao = new UserDAO();
	int row = dao.save(vo);

	return null;	
	
}
}
