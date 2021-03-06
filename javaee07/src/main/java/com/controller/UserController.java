package com.controller;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.dao.UserDao;
import com.po.MyUser;
import com.pojo.MapUser;
import com.pojo.SeletUserParam;
@Controller("userController")
public class UserController {
	@Autowired
	private UserDao userDao;
	public void test() {
		//查询一个用户
		MyUser auser = userDao.selectUserById(1);
		System.out.println(auser);
		System.out.println("================");
		//添加一个用户
		/*MyUser addmu = new MyUser();
		addmu.setUname("陈恒");
		addmu.setUsex("男");
		int add = userDao.addUser(addmu);
		System.out.println("添加了" + add + "条记录");
		System.out.println("添加记录的主键是" + addmu.getUid());
		System.out.println("================");
		//修改一个用户
		MyUser updatemu = new MyUser();
		updatemu.setUid(1);
		updatemu.setUname("张三");
		updatemu.setUsex("女");
		int up = userDao.updateUser(updatemu);
		System.out.println("修改了" + up + "条记录");
		System.out.println( "================");
		//删除一个用户
		int dl = userDao.deleteUser(9);
		System.out.println("删除了" + dl + "条记录");
		System.out.println("================");*/
		//查询多个用户
		//下列4行代码为书本7.3.1示例（使用Map接口传递多个参数），使用时需注释其后的4行使用SeletUserParam的代码
		//并在UserDao.java代码中注释public List<MyUser> selectAllUser(SeletUserParam param);
		/*Map<String, Object> map = new HashMap<>();
		map.put("u_name", "陈");
		map.put("u_sex", "男");
		List<MyUser> list = userDao.selectAllUser(map);*/
		
		//下列4行代码为书本7.3.2示例（使用JavaBean传递多个参数），使用时需注释其上的4行使用Map<String, Object>的代码
		//并在UserDao.java代码中注释public List<MyUser> selectAllUser(Map<String, Object> param);	
		SeletUserParam su = new SeletUserParam();
		su.setU_name("陈");
		su.setU_sex("男");
		List<MyUser> list = userDao.selectAllUser(su);
		for (MyUser myUser : list) {
			System.out.println(myUser);
		}
		System.out.println("================");
		//使用resultMap映射结果集
		List<MapUser> listResultMap = userDao.selectResultMap(); 
		for (MapUser myUser : listResultMap) {
			System.out.println(myUser);
		}
		System.out.println("================");
		//查询所有用户信息存到Map中 
		List<Map<String, Object>> lmp = userDao.selectAllUserMap();
		for (Map<String, Object> map2 : lmp) {
			System.out.println(map2);
		}
	}
}
