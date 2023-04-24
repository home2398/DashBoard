package kr.pitb.model;

import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class CsvDAO {

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
	
	
	
	public List<CsvVO> selectAll() {
		SqlSession session = null;
		List<CsvVO> list = null;
		
		try {
			session = sqlSessionFactory.openSession();
			list = session.selectList("selectAll");
		} finally {
			session.close();
		}
		
		return list;
	}
	
	
	

}
