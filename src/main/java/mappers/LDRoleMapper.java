package mappers;
import java.sql.ResultSet;
	import java.sql.SQLException;
	import org.springframework.jdbc.core.RowMapper;
	import models.LDMemberData;
	import models.LDRoles;
	
public class LDRoleMapper implements RowMapper<LDRoles> {
	@Override
	public LDRoles mapRow(ResultSet arg0, int arg1) throws SQLException {
		// TODO Auto-generated method stub
		
		LDRoles rolesData =new LDRoles();
		rolesData.setLdRoleID(arg0.getString(1));
		rolesData.setLdRoleName(arg0.getString(2));
		rolesData.setLdRoleDescription(arg0.getString(3));
		
		
		//LDROLEID                                  NOT NULL VARCHAR2(5)
		return rolesData;
	}
	
}
