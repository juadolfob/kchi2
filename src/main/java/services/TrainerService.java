package services;

import java.util.ArrayList;
import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.jdbc.core.JdbcTemplate;

import models.TrainingProposals;
import models.TrainingRequirementMaster;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.jdbc.core.JdbcTemplate;

import mappers.TrainingProposalsMapper;

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
		TrainingProposals trainingApprove = new TrainingProposals();
		
		Object[] params = new Object[]{executionID};
		trainingApprove = this.template.queryForObject("select * from TrainingProposals where ExecutionID = ?", params, new TrainingProposalsMapper());
		
		return trainingApprove;
	}
	
	
	
}
