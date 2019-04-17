package action;

import java.util.List;

import service.StudentsService;
import service.imp.StudentsServiceImp;
import entity.Students;

public class StudentsAction {
	private StudentsService ss = new StudentsServiceImp();
	private Students students;
	private List<Students> list;
	private int id1;

	public Students getStudents() {
		return students;
	}

	public void setStudents(Students students) {
		this.students = students;
	}

	public List<Students> getList() {
		return list;
	}

	public void setList(List<Students> list) {
		this.list = list;
	}

	public int getId() {
		return id1;
	}

	public void setId(int id) {
		this.id1 = id;
	}

	//添加员工
	public String addStudents(){
		//调用方法
		ss.insertStudents(students);
		return "addok";
	}
	//删除员工
	public String deleteStudents(){
		ss.deleteStudents(id1);
		return "deleteok";
	}
	//修改员工
	public String updateStudents(){
		ss.updateStudents(students);
		return "updateok";
	}
	//获取所有员工信息
	public String getAllStudents(){
		list = ss.queryAll();
		//跳转页面
		return "getAllStudentsok";
	}

}
