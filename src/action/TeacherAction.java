package action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.util.ValueStack;
import service.TeacherService;
import service.imp.TeacherServiceImp;
import entity.Teacher;

public class TeacherAction {

	private Teacher teacher;
	private TeacherService ts = new TeacherServiceImp();

	//登录
	public String login(){
		ActionContext ac = ActionContext.getContext();
		ValueStack vs = ac.getValueStack();
		ts.login(teacher.getName(), teacher.getPassword());
		vs.setValue("#session.username",teacher.getName());
		return "loginsuccess";
	}

	//注册
	public String register(){
		if(teacher.getName()!=null && teacher.getPassword()!=null){
			ts.register(teacher);
			return "registerok";
		}else{
			return "registerfalse";
		}
	}

	public Teacher getTeacher() {
		return teacher;
	}
	public void setTeacher(Teacher teacher) {
		this.teacher = teacher;
	}


}
