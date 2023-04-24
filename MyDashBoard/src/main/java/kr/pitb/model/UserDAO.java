package kr.pitb.model;

import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import kr.pitb.model.UserVO;

public class UserDAO {

	
//	mybatis 파일을 읽어서 connection 객체 빌려오기 위해서 작성해야하는 코드
	
	private static SqlSessionFactory sqlSessionFactory;
	static {
		try {
			String resource = "kr/pitb/db/mybatis-config.xml";
			InputStream inputStream = Resources.getResourceAsStream(resource);
			sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public int join(UserVO vo) {
		// 데이터베이스 연결 ~ 추가
		SqlSession session = null;
		int row =0;
		try {
			
		
		// 1. connection(sqlsession) 빌려오기
		session = sqlSessionFactory.openSession(true);
		
		// 2. 사용하기
		// mapper 파일로 보내줘야하는 데이터가 있을 경우 매개변수 2개짜리 사용
		// 보내야하는 데이터가 없다면 매개변수 1개짜리 사용
		// insert(mapper파일에서 사용하고 싶은 sql구문 id값, 보내줘야하는 데이터)
		row = session.insert("join", vo);
		} finally {
			// 3. 반납하기
			session.close();
		}
		return row;
		
	}

	public UserVO login(UserVO vo) {
		
		UserVO result = null;
		SqlSession session = null;
		
		try {
			 session = sqlSessionFactory.openSession(true);
			 System.out.println("DAO vo 상태 >> " + vo.getId() + "," + vo.getPw() );
			 result = session.selectOne("login", vo);
		} finally {
			session.close();
		}
		return result;
	}
	
	
	
	
	
	
	
	
	
	
}
