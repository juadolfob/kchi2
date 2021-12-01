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
		Object[] params = new Object[]{executionID};
		trainingApprove = this.template.queryForObject("select * from TrainingProposals where ExecutionID = ?", params, new TrainingProposalsMapper());
		LDMemberData member = this.template.queryForObject("select * from TrainingProposals where ExecutionID = ?", params, new LDMembermapper());
		trainingApprove.setMemberID(member);
		return trainingApprove;
	}
	
	
	
}
