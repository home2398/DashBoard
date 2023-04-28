package kr.pitb.model;

import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class CatDAO {
	
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
	public List<CatVO> selectCat(String cat) {
		
		List<CatVO> result = null;
		SqlSession session = null;
		System.out.println("들어옴 >> "+cat);
		try {
			 session = sqlSessionFactory.openSession(true);
			 result = session.selectList("selectCat", cat);
			 System.out.println("결과값>>"+result);
		} finally {
			session.close();
		}
		return result;
		
	}

}
