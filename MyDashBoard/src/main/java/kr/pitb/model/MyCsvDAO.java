package kr.pitb.model;

import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import kr.pitb.model.MyCsvVO;

public class MyCsvDAO {
	
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
	
	
	public List<MyCsvVO> selectMyCsvList(String id) {
		SqlSession session = null;
		List<MyCsvVO> list = null;
		System.out.println("들어옴 >>"+id);
		try {
			// 1. session 빌려오기
			session = sqlSessionFactory.openSession();
			// 2. session 사용하기
			// select email, tel, address from web_member where email !='admin' 
			list= session.selectList("selectMyCsvList" , id);
			System.out.println("결과값>>"+list);
			
			
		} finally {
			// 3. session 반납하기
			session.close();
		}
		// 4. 결과값 반환
		return list;
	}
	
	
	
}
