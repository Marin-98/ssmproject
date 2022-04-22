package com.ch5;
import java.util.List;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
public class TestSpringJDBC {
	public static void main(String[] args) {
		ApplicationContext appCon = new ClassPathXmlApplicationContext("applicationContext.xml");
		//???????§µ????????????????
		TestDao td = (TestDao)appCon.getBean("testDao");
		String insertSql = "insert into user values(null,?,?)";
		//????param?????insertSql???????????
		Object param1[] = {"chenheng1", "??"};
		Object param2[] = {"chenheng2", "?"};
		Object param3[] = {"chenheng3", "??"};
		Object param4[] = {"chenheng4", "?"};
		//??????
		td.update(insertSql, param1);
		td.update(insertSql, param2);
		td.update(insertSql, param3);
		td.update(insertSql, param4);
		//??????
		String selectSql ="select * from user";
		List<MyUser> list = td.query(selectSql, null);
		for(MyUser mu : list) {
			System.out.println(mu);
		}
	}
}
