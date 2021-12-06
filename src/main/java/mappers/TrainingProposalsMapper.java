package mappers;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.jdbc.core.RowMapper;

import models.LDMemberData;
import models.TrainingProposals;
import models.TrainingRequirementMaster;
import services.MembersServices;

public class TrainingProposalsMapper implements RowMapper<TrainingProposals>{

	@Override
	public TrainingProposals mapRow(ResultSet result, int arg1) throws SQLException {
		// TODO Auto-generated method stub
		TrainingProposals trainingProposals = new TrainingProposals();
		
		trainingProposals.setProposalID(result.getString("ProporsalID"));
		TrainingRequirementMaster requirement = new TrainingRequirementMaster();
		requirement.setRequirementID(result.getString("RequirementID"));
		trainingProposals.setRequirementID(requirement);
		trainingProposals.setProposedDate(result.getDate("ProposedDate"));
		trainingProposals.setPropsedTime(result.getString("ProposedTime"));
		trainingProposals.setProposedDuration(result.getInt("ProposedDuration"));
		trainingProposals.setSelected(result.getInt("selected"));
		LDMemberData member = new MembersServices().getLDMemberById(result.getString("MemberId"));
		trainingProposals.setMemberID(member);
		
		return trainingProposals;
	}

}