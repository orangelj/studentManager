package service.imp;

import java.util.List;

import service.StudentsService;
import util.MybatisUtil;
import dao.StudentsDao;
import entity.Students;

public class StudentsServiceImp implements StudentsService{
	StudentsDao sd = (StudentsDao) MybatisUtil.getMapper(StudentsDao.class);
	//查询所有
	@Override
	public List<Students> queryAll() {
		/*StudentsDao sd = (StudentsDao) MybatisUtil.getMapper(StudentsDao.class);*/
		return sd.queryAll();
	}

	//添加学生
	@Override
	public void insertStudents(Students students) {
		StudentsDao sd = (StudentsDao) MybatisUtil.getMapper(StudentsDao.class);
		sd.insertStudents(students);
		MybatisUtil.commit();
	}

	//删除学生
	@Override
	public void deleteStudents(int id) {
		StudentsDao sd = (StudentsDao) MybatisUtil.getMapper(StudentsDao.class);
		sd.deleteStudents(id);
		MybatisUtil.commit();

	}

	//修改学生
	@Override
	public void updateStudents(Students students) {
		/*StudentsDao sd = (StudentsDao) MybatisUtil.getMapper(StudentsDao.class);*/
		sd.updateStudents(students);
		MybatisUtil.commit();

	}

}
