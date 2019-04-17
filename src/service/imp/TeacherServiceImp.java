package service.imp;

import dao.TeacherDao;
import entity.Teacher;
import service.TeacherService;
import util.MybatisUtil;

public class TeacherServiceImp implements TeacherService {

	@Override
	public Teacher login(String name, String password) {
		TeacherDao td = (TeacherDao) MybatisUtil.getMapper(TeacherDao.class);
		return td.select(name, password);

	}

	@Override
	public Teacher register(Teacher teacher) {
		TeacherDao td = (TeacherDao) MybatisUtil.getMapper(TeacherDao.class);
		td.insert(teacher);
		return teacher;

	}
}
