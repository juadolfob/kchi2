package templates;

import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.jdbc.core.JdbcTemplate;

import mappers.StudentMapper;
import models.Student;


public class StudentTemplate {

JdbcTemplate template;
	
	
	public StudentTemplate() {
		ApplicationContext context = new ClassPathXmlApplicationContext("spring-config.xml");
		template = (JdbcTemplate)context.getBean("mytemp");
	}
	
	public void  getAllStudents() {
		List<Student> students = template.query("Select * from student", new StudentMapper());
		for (Student student : students) {
		System.out.println("Id: "+ student.getSid());
		System.out.println("Name: "+ student.getSname());
			System.out.println("City: "+ student.getScity());
			System.out.println("Score: "+ student.getSscore());
			System.out.println("-----------------");
		}
		//return students;
	}
	
	public static void main(String[] args) {
		StudentTemplate obj = new StudentTemplate();
		System.out.println("ok.....");
		obj.getAllStudents();
		
		
		
	
	
	}
}
