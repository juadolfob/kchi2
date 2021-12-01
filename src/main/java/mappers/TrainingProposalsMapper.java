package mappers;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import models.TrainingProposals;

public class TrainingProposalsMapper implements RowMapper<TrainingProposals>{

	@Override
	public TrainingProposals mapRow(ResultSet result, int arg1) throws SQLException {
		// TODO Auto-generated method stub
		TrainingProposals trainingProposals = new TrainingProposals();
		
		trainingProposals.setProposalID(result.getString("ProporsalID"));
		trainingProposals.setExecutionID(result.getString("ExecutionID"));
		trainingProposals.setProposedDate(result.getDate("ProposedDate"));
		trainingProposals.setPropsedTime(result.getString("ProposedTime"));
		trainingProposals.setProposedDuration(result.getInt("ProposedDuration"));
		trainingProposals.setMemberID(result.getInt("MemberId"));
		
		return trainingProposals;
	}

}