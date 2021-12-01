package mappers;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import models.TrainingParticipantData;

public class TrainingParticipantMapper implements RowMapper<TrainingParticipantData>{

	@Override
	public TrainingParticipantData mapRow(ResultSet result, int arg1) throws SQLException {
		
		TrainingParticipantData trainingParticipantData = new TrainingParticipantData();

		trainingParticipantData.setEmployeeID(result.getString("EmployeeID"));
		trainingParticipantData.setEmployeeName(result.getString("EmployeeName"));
		trainingParticipantData.setEmail(result.getString("Email"));
		trainingParticipantData.setContact(result.getString("Contact"));
		trainingParticipantData.setAttendanceStatus(result.getString("AttendanceStatus"));
		trainingParticipantData.setRequirementID(result.getString("RequirementID"));
		
		return trainingParticipantData;
	}

}
