package dao;

import org.apache.ibatis.annotations.Param;

import entity.Teacher;

public interface TeacherDao {
	//查询
	Teacher select(@Param("name")String name,@Param("password")String password);
	//增加
	void insert(Teacher teacher);
}
