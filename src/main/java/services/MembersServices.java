package services;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.jdbc.core.JdbcTemplate;

import mappers.LDMembermapper;
import mappers.LDRoleMapper;
import models.LDMemberData;
import models.LDRoles;

 


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
	
	public LDMemberData signUp(LDMemberData memberData) {
		LDMemberData member=new LDMemberData();
		
		
		
		
		return member;
	}
	
	public LDRoles LDRole(String id) {
		LDRoles role =new LDRoles();
		
		
		Object[] params = new Object[]{id};
		role = this.template.queryForObject("select * from LDRoles where LDRoleID = ?", params, new LDRoleMapper());
	
		
		
		
		
		return role;
		
	}
	
	
	
	public static void main(String[] args) {
		
		MembersServices showdatas = new MembersServices();
		
		 LDMemberData member = showdatas.signIn("Mahesh");
		System.out.println(member.getMemberName()+ member.getLdRoleID().getLdRoleName());
	}
	
	
	
	
}
