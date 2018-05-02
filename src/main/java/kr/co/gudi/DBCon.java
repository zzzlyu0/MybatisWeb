package kr.co.gudi;

import java.io.IOException;
import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class DBCon {
	SqlSessionFactory sqlSessionFactory;
	
	public DBCon() throws IOException {
		String resource = "kr/co/gudi/mybatis-config.xml";
		InputStream inputStream = Resources.getResourceAsStream(resource);
		sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
	}
	
	public SqlSessionFactory getConn() {
		
		return sqlSessionFactory;
	}
}
