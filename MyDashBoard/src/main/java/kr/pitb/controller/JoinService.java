package kr.pitb.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.pitb.model.UserDAO;
import kr.pitb.model.UserVO;

public class JoinService implements Command {
	
public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		


		// 2. 요청받은 데이터들을 꺼내오기
		// -> 4개를 전부 꺼내와주세요!
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String nickname = request.getParameter("nickname");

		// 3. 데이터들을 하나로 묶어주기
		UserVO vo = new UserVO(id, pw, nickname,"","","","","");

		// 4. 데이터베이스에 데이터를 추가하기
		// -> 데이터베이스에 접근해야 한다. >> DAO 사용
		// 4-1) DAO 도구 불러오기
		UserDAO dao = new UserDAO();

		// 4-2> 회원가입 기능 사용하기
		int row = dao.join(vo);

		// 5) 흐름 제어
		if (row > 0) {
			// 성공했다면 join_success.jsp 로 forward 방식으로 이동
			// foward
			// 요청정보 공유 됨
			// 요청1번 응답1번

			// 5-1) request scope에 email 데이터 저장해서 보내기
			request.setAttribute("id", id);
			return "sign-in.jsp";
//			RequestDispatcher rd = request.getRequestDispatcher("join_success.jsp");
//			rd.forward(request, response);
		} else {
			// 실패했다면 main.jsp로 redirect 방식으로 이동
			// redirect
			// 요청2번 응답2번
			// 요청정보 공유 안됨
			// 책임전가 다른서버에 전달
			
			return "redirect:/GoSign-up.do";
		}
//		return "main.jsp";

		// scope(영역)
		// page : 선언된 한 페이지 내에서만 사용가능
		// request : 하나의 요청을 처리하는 영역(응답 돌려주기 전까지 사용 가능)
		// session : 브라우저를 닫기 전까지 사용 가능
		// application : server 종료 전까지 사용 가능

	
	}
	
	
	
	
	
	
	
}