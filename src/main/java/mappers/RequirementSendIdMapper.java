package mappers;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import models.RequirementSendId;
import services.RequerimentServices;

public class RequirementSendIdMapper implements RowMapper<RequirementSendId> {

	@Override
	public RequirementSendId mapRow(ResultSet result, int arg1) throws SQLException {
		// TODO Auto-generated method stub
		RequirementSendId requirement = new RequirementSendId();
		requirement.setRequestID(result.getString("requestID"));
		requirement.setRequirementID(new RequerimentServices().ReadRequestRequeriment(result.getString("requirementID")));
		return requirement;
	}

}
