package kr.pitb.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.pitb.model.UserDAO;
import kr.pitb.model.UserVO;


@WebServlet("/Join")
public class JoinService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		
		// 1. post 방식 한글 인코딩 잡아주기
				request.setCharacterEncoding("UTF-8");

				// 2. 요청받은 데이터들을 꺼내오기
				// -> 3개를 전부 꺼내와주세요!
				String id = request.getParameter("id");
				String pw = request.getParameter("pw");
				String nickname = request.getParameter("nickname");

				// 3. 데이터들을 하나로 묶어주기
				UserVO vo = new UserVO(id, pw, nickname);

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
//					return "sign-in.jsp";
					RequestDispatcher rd  = request.getRequestDispatcher("sign-in.jsp");
					rd.forward(request, response);
				} else {
					// 실패했다면 main.jsp로 redirect 방식으로 이동
					// redirect
					// 요청2번 응답2번
					// 요청정보 공유 안됨
					// 책임전가 다른서버에 전달
					response.sendRedirect("sign-up.jsp");
				}
		
		
		
		
		
		
		
		
		
		
		
		
	}

}
