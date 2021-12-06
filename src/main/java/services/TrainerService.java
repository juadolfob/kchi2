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
		Object[] params = new Object[]{ExecutionID};
		trainingProp = this.template.query("select * from TrainingProposals where ExecutionID = ?", params, new TrainingProposalsMapper());
		return trainingProp;
	}

	
	public void  SetSlot(List<TrainingProposals> trainingsetSlot,String ExecutionID){
		
		
		
	}
	
	public TrainingProposals getSlot(String proposalId){
		TrainingProposals trainingApprove;
		trainingApprove = this.template.queryForObject("select * from TrainingProposals where proporsalID = ?", new Object[]{proposalId}, new TrainingProposalsMapper());
		return trainingApprove;
	}
	
	public List<TrainingProposals> getSelectedProposals(String requirementId) {
		Object[] params = new Object[]{requirementId, 1};
		List<TrainingProposals> proposals = this.template.query("select * from trainingProposals where requirementId = ? and selected = ?", params, new TrainingProposalsMapper());
		return proposals;
	}
	
}
