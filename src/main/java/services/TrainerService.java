package services;

import java.util.ArrayList;
import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.jdbc.core.JdbcTemplate;

import models.TrainingProposals;
import models.LDMemberData;
import models.TrainingRequirementMaster;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.jdbc.core.JdbcTemplate;

import mappers.TrainingProposalsMapper;
import mappers.LDMembermapper;

public class TrainerService {
	JdbcTemplate template;
	
	public TrainerService() {
		ApplicationContext context = new ClassPathXmlApplicationContext("spring-config.xml");
		this.template = (JdbcTemplate) context.getBean("mytemp");
	}
	
	public List<TrainingProposals> GetSlot(String ExecutionID){
		List<TrainingProposals> trainingProp = new ArrayList<TrainingProposals>();
		
		return trainingProp;
	}

	
	public void  SetSlot(List<TrainingProposals> trainingsetSlot,String ExecutionID){
		
		
		
	}
	
	public TrainingProposals GetApproveSlot(String executionID){
		TrainingProposals trainingApprove;
		trainingApprove = this.template.queryForObject("select * from TrainingProposals where ExecutionID = ?", new Object[]{executionID}, new TrainingProposalsMapper());
		LDMemberData member = this.template.queryForObject("select * from LDMemberData where MemberID = ?", new Object[]{trainingApprove.getMemberID()}, new LDMembermapper());
		trainingApprove.setMember(member);
		return trainingApprove;
	}
	
	
	
}
