package mappers;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import models.Student;

public class StudentMapper implements RowMapper<Student>{

	@Override
	public Student mapRow(ResultSet result, int arg1) throws SQLException {
		// TODO Auto-generated method stub
		Student student = new Student();
		
		student.setSid(result.getInt("sid"));
		student.setSname(result.getString("sname"));
		student.setScity(result.getString("scity"));
		student.setSscore(result.getInt("sscore"));
		
		return student;
	}

}
