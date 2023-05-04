package kr.pitb.frontcontroller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.pitb.controller.JoinService;
import kr.pitb.controller.LoginService;
import kr.pitb.controller.MychartService;
import kr.pitb.controller.SelectButtonService;
import kr.pitb.controller.SelectMyCsvList;
import kr.pitb.controller.MycheckService;
import kr.pitb.model.UserDAO;
import kr.pitb.model.UserVO;
import kr.pitb.controller.Command;

// url이 .do 로 끝나는 모든 요청에 대해 처리하는 서블릿,

@WebServlet("*.do")
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private HashMap<String, Command> map = null;

	public void init() throws ServletException {
		map = new HashMap<>();

		map.put("Login.do", new LoginService());
		map.put("Join.do", new JoinService());
		map.put("Mycheck.do", new MycheckService());
		map.put("SelectButton.do", new SelectButtonService());
		map.put("SelectMyCsvList.do", new SelectMyCsvList());
		map.put("Mychart.do", new MychartService());
		
	}

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// 1. 요청이 들어온 경로를 잘라내기
		// ex) Login.do -> 로그인 기능 수행
		// ex) Join.do -> 회원가입 기능 수행

		// 1-1) uri 가져오기
		String uri = request.getRequestURI();
//		System.out.println("요청 uri >> " + uri);

		// 1-2) contextPath 가져오기
		String cp = request.getContextPath();
//		System.out.println("요청 cp >> " + cp);

		// 1-3) 최종 요청 uri 가져오기
		String finaluri = uri.substring(cp.length() + 1);
//		System.out.println("잘라낸 uri >>" + finaluri);

		// 중복되는 코드 빼주기
		// 한글 인코딩 잡아주기
		request.setCharacterEncoding("UTF-8");

		// 최종적으로 이동해야하는 경로
		String finalpath = null;
		Command com = null;

		System.out.println("확인>>"+finaluri);
		
		
		// 2. 요청 경로에 따라 다른 기능을 수행하게끔 설계
	 if (finaluri.contains("Go")) {
			// 특정 로직을 수행하지 않고 그냥 바로 jsp 로 이동해야 하는 url
			// Go~~ >> 알고리즘 처리
			finalpath = finaluri.replaceAll("Go", "").toLowerCase().replaceAll(".do", ".jsp");
			// ViewResolver 직접 제작!
		} else {
			com = map.get(finaluri);
			finalpath = com.execute(request, response);
		}
//				else if(finaluri.equals("GoMain.do")) {
//					// jsp파일을 전부 WEB-INF(보안폴더)에 집어넣음
//					// WEB-INF폴더는 반드시 Servlet을 통해서만 접근 가능
//					// -> jsp만 단독으로 실행하는거 방지
//					// -> 디렉토리 구조(파일명)가 그대로 드러나는 것을 방지
//					// webapp -> 실행했을 때 기준점
//					finalpath = "main.jsp";
//				} 
//				else if(finaluri.equals("GoLogout.do")) {
//					finalpath = "logout.jsp";
//				}

		// redirect:/가 포함되어 있다면 sendRedirect 사용하기

		if (finalpath == null) {
			// ajax 통신으로 데이터 처리할 때 잡아줘야 하는 구간
			// ajax는 비동기! 페이지 이동이 일어나면 안된다
			// finalpath == null -> 이동 할 페이지가 없다
			// -> 어떠한 이동도 하지 않겠다
		}

		else if (finalpath.contains("redirect:/")) {

			// ex)
			// finalpath --> redirect:/Gomain.do
			response.sendRedirect(finalpath.substring(10));
		} else {
			// 그렇지 않은 경우 forward
			RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/views/" + finalpath);
			rd.forward(request, response);
		}
	}

}
