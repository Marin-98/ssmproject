package com.mybatis.test;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import com.mybatis.po.MyUser;
public class MyBatisTest {
	public static void main(String[] args) {
		try {
			//??????????mybatis-config.xml
			InputStream config = Resources.getResourceAsStream("mybatis-config.xml");
			//???????????????SqlSessionFactory
			SqlSessionFactory ssf = new SqlSessionFactoryBuilder().build(config);
			//???SqlSessionFactory????SqlSession
			SqlSession ss = ssf.openSession();
			//SqlSession??????????§Ø????SQL?????????????
			//com.mybatis.mapper.UserMapper.selectUserById?UserMapper.xml?§Ö????????+select??id
			//?????????
			MyUser mu = ss.selectOne("com.mybatis.mapper.UserMapper.selectUserById", 1);
			
			System.out.println(mu);
			//?????????
			/*MyUser addmu = new MyUser();
			addmu.setUname("???");
			addmu.setUsex("??");
			ss.insert("com.mybatis.mapper.UserMapper.addUser",addmu);
			//?????????
			MyUser updatemu = new MyUser();
			updatemu.setUid(1);
			updatemu.setUname("????");
			updatemu.setUsex("?");
			ss.update("com.mybatis.mapper.UserMapper.updateUser", updatemu);
			//?????????
			//ss.delete("com.mybatis.mapper.UserMapper.deleteUser", 3);
			*/
			//??????????
			List<MyUser> listMu = ss.selectList("com.mybatis.mapper.UserMapper.selectAllUser");
			for (MyUser myUser : listMu) {
				System.out.println(myUser);
			}
			//??????
			ss.commit();
			//???SqlSession
			ss.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
