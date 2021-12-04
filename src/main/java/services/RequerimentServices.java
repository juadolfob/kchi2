package services;

import java.util.ArrayList;
import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.jdbc.core.JdbcTemplate;

import mappers.LDRoleMapper;
import mappers.RequirementSendIdMapper;
import mappers.TrainingRequirementMasterMapper;
import mappers.VerticalMasterMapper;
import models.LDMemberData;
import models.RequirementSendId;
import models.TrainingRequirementMaster;

public class RequerimentServices {
	
	JdbcTemplate template;

	public RequerimentServices() {
	ApplicationContext context = new ClassPathXmlApplicationContext("spring-config.xml");
	this.template = (JdbcTemplate) context.getBean("mytemp");
	}

	
	public TrainingRequirementMaster createRequestRequeriment(TrainingRequirementMaster trainingRequirementMaster ){
		Object[] params = new Object[]{trainingRequirementMaster.getRequirementID(), trainingRequirementMaster.getRequirementReceivedDate(), trainingRequirementMaster.getRequirementUser(), trainingRequirementMaster.getRequirementUserVertical().getVid(), trainingRequirementMaster.getTrainingArea(), trainingRequirementMaster.getTrainingDescription(), trainingRequirementMaster.getRequestedTrainingStartDate(), trainingRequirementMaster.getTotalCandidates(), trainingRequirementMaster.getTrainingTimeZone(), trainingRequirementMaster.getTotalDurationDays()};
		this.template.update("insert into trainingRequirementMaster values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)", params);
		TrainingRequirementMaster newRequirement = this.ReadRequestRequeriment(trainingRequirementMaster.getRequirementID());
		return newRequirement;
	}

	public TrainingRequirementMaster ReadRequestRequeriment(String RequerimentID){
		TrainingRequirementMaster readtrainingReq = new TrainingRequirementMaster();
		Object[] params = new Object[]{RequerimentID};
		readtrainingReq = this.template.queryForObject("select * from TrainingRequirementMaster where requirementid = ?", params, new TrainingRequirementMasterMapper());
	
		return readtrainingReq;
	}
	
	
	public List <TrainingRequirementMaster> ReadAllRequestRequeriment(){
		List <TrainingRequirementMaster> readalltrainingReq = new ArrayList<TrainingRequirementMaster>();
		readalltrainingReq = this.template.query("select * from TrainingRequirementMaster", new TrainingRequirementMasterMapper());
		return readalltrainingReq;
	}
	
	
	public List <RequirementSendId> readSendRequirement(){
		List <RequirementSendId> requirement = new ArrayList<RequirementSendId>();
		requirement = this.template.query("select * from RequirementSendId", new RequirementSendIdMapper());
		return requirement;
	}
	
//	public static void main(String[] args) {
//		
//		RequerimentServices requirementServices = new RequerimentServices();
//		
//		TrainingRequirementMaster requirementMaster = requirementServices.ReadRequestRequeriment("TRM001");
//		System.out.println("Id: "+ requirementMaster.getRequirementID());
//		System.out.println("RequirementReceivedData: "+ requirementMaster.getRequirementReceivedDate());
//		System.out.println("requirementUser: "+ requirementMaster.getRequirementUser());
//		System.out.println("trainingArea: "+ requirementMaster.getTrainingArea());
//		System.out.println("trainingArea: "+ requirementMaster.getRequirementUserVertical().getVerticalName());
//		
//		requirementMaster.getTotalDurationDays()
//		RequerimentServices requirementServices = new RequerimentServices();
//		
//		List <RequirementSendId> requirement = new ArrayList<RequirementSendId>();
//		requirement = requirementServices.readSendRequirement();
//		
//		for (RequirementSendId requirementSendId : requirement) {
//			System.out.println("ID:" +requirementSendId.getRequestID());
//			System.out.println("RequirementID:" +requirementSendId.getRequirementID().getRequirementID());
//		}
//	}
}
