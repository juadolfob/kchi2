package mappers;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import models.LDMemberData;

public class LDMemberDataMapper implements RowMapper<LDMemberData>{

	@Override
	public LDMemberData mapRow(ResultSet result, int arg1) throws SQLException {
		// TODO Auto-generated method stub
		LDMemberData ldMember = new LDMemberData();
		ldMember.setMemberId(result.getString("memberId"));
		ldMember.setMemberName(result.getString("memberName"));
		ldMember.setMemberContact(result.getString("memberContact"));
		ldMember.setMemberLocation(result.getString("memberLocation"));
		ldMember.setMemberEmail(result.getString("memberEmail"));
		return null;
	}

}
