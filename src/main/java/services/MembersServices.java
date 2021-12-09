package services;

import java.util.ArrayList;
import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.jdbc.core.JdbcTemplate;
import mappers.LDMembermapper;
import mappers.LDRoleMapper;
import mappers.VerticalMasterMapper;
import models.LDMemberData;
import models.LDRoles;
import models.VerticalMaster;
import models.TrainingProposals;
 


public class MembersServices {
	
	JdbcTemplate template;

	public MembersServices() {
		ApplicationContext context = new ClassPathXmlApplicationContext("spring-config.xml");
		this.template = (JdbcTemplate) context.getBean("mytemp");
	}

	
	
	
	public LDMemberData signIn(String name) {
		LDMemberData member=new LDMemberData();	
		Object[] params = new Object[]{name};
		member = this.template.queryForObject("select * from LDMemberData where MemberName = ?", params, new LDMembermapper());
	
		return member;
	}
	
	
	
	public LDMemberData signUp(LDMemberData ldmemberdata) {
		
		Object[] params = new Object[]{ldmemberdata.getMemberId(),ldmemberdata.getMemberName(),ldmemberdata.getMemberContact(),ldmemberdata.getMemberLocation(),ldmemberdata.getMemberEmail(),ldmemberdata.getLdRoleID().getLdRoleID()};
		this.template.update("insert into LDMemberData values(?,?,?,?,?,?)", params);
		return ldmemberdata;
	}
	
	
	public LDRoles LDRole(String id) {
		LDRoles role =new LDRoles();
		Object[] params = new Object[]{id};
		role = this.template.queryForObject("select * from LDRoles where LDRoleID = ?", params, new LDRoleMapper());

		return role;
		
	}
	
	
	
	
	public List<LDRoles> getLDRoles(){
		List<LDRoles> allLDRoles = template.query("Select * from LDRoles", new LDRoleMapper());
		return allLDRoles;
	}
	
	
	public List<VerticalMaster> GetVerticalMasterAll( ){
		
		
		return null;
	}

	
	
	
	
	public LDMemberData getLDMemberById(String id) {
		LDMemberData member=new LDMemberData();
		Object[] params = new Object[]{id};
		member = this.template.queryForObject("select * from LDMemberData where MemberID = ?", params, new LDMembermapper());
		return member;
	}
	
	public VerticalMaster getVerticalMasterById(String id) {
		VerticalMaster vertical = new VerticalMaster();
		Object[] params = new Object[]{id};
		vertical = this.template.queryForObject("select * from VerticalMaster where VID = ?", params, new VerticalMasterMapper());
		return vertical;
	}
	
	public String getNewId(String tableName, String keyFieldName) {
		int count = this.template.queryForObject("select count(*) from " + tableName, Integer.class);
		String lastId = "";
		if (count == 0) {
			lastId = "REG001";
		} else {
			lastId = this.template.queryForObject("select " + keyFieldName + " from " + tableName + " where rownum = 1 order by " + keyFieldName + " desc", String.class);
		}
		String newId = this.generateId(lastId);
		return newId;
	}
	
	public String generateId(String lastId) {
		String prefix = lastId.substring(0, 3);
		String value = lastId.substring(3, lastId.length());
		int newValue = Integer.parseInt(value) + 1;
		String sufix = newValue + "";
		while (sufix.length() < 3) {
			sufix = "0" + sufix;
		}
		return prefix + sufix;
	}
	
	public List<VerticalMaster> getAllVerticalMaster() {
		List<VerticalMaster> vertical = new ArrayList<VerticalMaster>();
		vertical = this.template.query("select * from VerticalMaster", new VerticalMasterMapper());
		return vertical;
	}
	
	public void registerSlot(TrainingProposals proposal) {
		Object[] params = new Object[]{proposal.getProposalID(),proposal.getRequirementID().getRequirementID(), proposal.getSelected(), proposal.getMemberID().getMemberId(), proposal.getProposedDate(), proposal.getPropsedTime(), proposal.getProposedDuration()};
		this.template.update("insert into TrainingProposals values(?,?,?,?,?,?,?)", params);
	}
//	public static void main(String[] args) {
//		
//		MembersServices showdatas = new MembersServices();
//		
//		List<VerticalMaster> vertical = showdatas.getAllVerticalMaster();
//		for (VerticalMaster verticalMaster : vertical) {
//			System.out.println(verticalMaster.getVerticalName());
//		}
//		
//	}
}
