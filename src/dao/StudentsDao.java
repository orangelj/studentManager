package dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import entity.Students;

public interface StudentsDao {
	//查询所有
	List<Students> queryAll();
	//插入
	void insertStudents(Students students);
	//删除
	void deleteStudents(@Param("id")int id);
	//修改
	void updateStudents(Students students);
}
