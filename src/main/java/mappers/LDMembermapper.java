package mappers;


import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;

import models.LDMemberData;
import services.MembersServices;


public class LDMembermapper implements RowMapper<LDMemberData> {

	@Override
	public LDMemberData mapRow(ResultSet arg0, int arg1) throws SQLException {
		// TODO Auto-generated method stub
		
		LDMemberData memberData =new LDMemberData();
		memberData.setMemberId(arg0.getString(1));
		memberData.setMemberName(arg0.getString(2));
		memberData.setMemberContact(arg0.getString(3));
		memberData.setMemberLocation(arg0.getString(4));
		memberData.setMemberEmail(arg0.getString(5));
		String roleid= arg0.getString(6);
		
		memberData.setLdRoleID(new MembersServices().LDRole(roleid));
		
		
		return memberData;
	}


	 
	
	
	
}
