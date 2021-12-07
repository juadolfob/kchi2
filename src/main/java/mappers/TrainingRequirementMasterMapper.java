package mappers;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import models.TrainingRequirementMaster;
import services.MembersServices;

public class TrainingRequirementMasterMapper implements RowMapper<TrainingRequirementMaster> {

	@Override
	public TrainingRequirementMaster mapRow(ResultSet result, int arg1) throws SQLException {
		// TODO Auto-generated method stub
		TrainingRequirementMaster training = new TrainingRequirementMaster();
		training.setRequirementID(result.getString("requirementID"));
		training.setRequirementReceivedDate(result.getDate("RequirementReceivedData"));
		training.setRequirementUser(result.getString("requirementUser"));
		training.setTrainingArea(result.getString("trainingArea"));
		training.setTrainingDescription(result.getString("trainingDescription"));
		training.setRequestedTrainingStartDate(result.getDate("requestedTrainingStartDate"));
		training.setTotalCandidates(result.getInt("totalCandidates"));
		training.setTrainingTimeZone(result.getString("trainingTimeZone"));
		training.setTotalDurationDays(result.getInt("totalDurationDays"));
		training.setRequirementState(result.getInt("requirementState"));
		training.setRequirementUserVertical(new MembersServices().getVerticalMasterById(result.getString("RequirementUserVertical")));
		return training;
	}

}
