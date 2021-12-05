package mappers;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import models.TrainingExecutionMaster;

public class TrainingExecutionMasterMapper implements RowMapper<TrainingExecutionMaster> {

	@Override
	public TrainingExecutionMaster mapRow(ResultSet result, int arg1) throws SQLException {
		TrainingExecutionMaster trainingExecution = new TrainingExecutionMaster();
		
		trainingExecution.setExecutionID(result.getString("ExecutionID"));
		trainingExecution.setRequirementID(result.getString("RequierementID"));
		trainingExecution.setConfirmedDate(result.getDate("ConfirmedDate"));
		trainingExecution.setConfirmedTime(result.getString("ConfirmedTime"));
		trainingExecution.setTrainerID(result.getString("Trainer"));
		trainingExecution.setTotalHRS(result.getInt("TotalHRS"));
		trainingExecution.setProposalStatus(result.getString("ProposalStatus"));
		trainingExecution.setTotalParticipantsAllowed(result.getInt("TotalParticipantsAllowed"));
		
		return trainingExecution;
	}
	
}
