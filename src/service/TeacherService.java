package service;

import entity.Teacher;

public interface TeacherService {

	//登录
	Teacher login(String name,String password);
	//注册
	Teacher register(Teacher teacher);
}


