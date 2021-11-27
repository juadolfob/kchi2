package mappers;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import models.LDMemberData;
import models.VerticalMaster;
import services.MembersServices;

public class VerticalMasterMapper implements RowMapper<VerticalMaster>{

	@Override
	public VerticalMaster mapRow(ResultSet result, int arg1) throws SQLException {
		// TODO Auto-generated method stub
		VerticalMaster vertical = new VerticalMaster();
		vertical.setVid(result.getString("vid"));
		vertical.setVerticalName(result.getString("verticalName"));
		vertical.setVerticalLBPID(new MembersServices().getLDMemberById(result.getString("VerticalLBPID")));
		return vertical;
	}

}
