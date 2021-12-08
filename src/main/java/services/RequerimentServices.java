package services;

import java.util.ArrayList;
import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.jdbc.core.JdbcTemplate;

import mappers.LDRoleMapper;
import mappers.RequirementSendIdMapper;
import mappers.TrainingRequirementMasterMapper;
import mappers.TrainingExecutionMasterMapper;
import mappers.VerticalMasterMapper;
import models.LDMemberData;
import models.TrainingProposals;
import models.RequirementSendId;
import models.TrainingRequirementMaster;
import models.TrainingExecutionMaster;

public class RequerimentServices {
	
	JdbcTemplate template;

	public RequerimentServices() {
		ApplicationContext context = new ClassPathXmlApplicationContext("spring-config.xml");
		this.template = (JdbcTemplate) context.getBean("mytemp");
	}

	
	public TrainingRequirementMaster createRequestRequeriment(TrainingRequirementMaster trainingRequirementMaster ) {
		trainingRequirementMaster.setRequirementID(new MembersServices().getNewId("TrainingRequirementMaster", "RequirementID"));
		trainingRequirementMaster.setRequirementState(1);
		Object[] params = new Object[]{
			trainingRequirementMaster.getRequirementID(), 
			trainingRequirementMaster.getRequirementReceivedDate(), 
			trainingRequirementMaster.getRequirementUser(), 
			trainingRequirementMaster.getRequirementUserVertical().getVid(), 
			trainingRequirementMaster.getTrainingArea(), 
			trainingRequirementMaster.getTrainingDescription(), 
			trainingRequirementMaster.getRequestedTrainingStartDate(), 
			trainingRequirementMaster.getTotalCandidates(), 
			trainingRequirementMaster.getTrainingTimeZone(), 
			trainingRequirementMaster.getTotalDurationDays(),
			trainingRequirementMaster.getRequirementState()
		};
		this.template.update("insert into trainingRequirementMaster values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)", params);
		TrainingRequirementMaster newRequirement = this.ReadRequestRequeriment(trainingRequirementMaster.getRequirementID());
		return newRequirement;
	}

	public TrainingRequirementMaster ReadRequestRequeriment(String RequerimentID) {
		TrainingRequirementMaster readtrainingReq = new TrainingRequirementMaster();
		Object[] params = new Object[]{RequerimentID};
		readtrainingReq = this.template.queryForObject("select * from TrainingRequirementMaster where requirementid = ?", params, new TrainingRequirementMasterMapper());
	
		return readtrainingReq;
	}
	
	
	public List <TrainingRequirementMaster> ReadAllRequestRequeriment() {
		List <TrainingRequirementMaster> readalltrainingReq = new ArrayList<TrainingRequirementMaster>();
		readalltrainingReq = this.template.query("select * from TrainingRequirementMaster", new TrainingRequirementMasterMapper());
		return readalltrainingReq;
	}
	
	public void aproveRequirement(TrainingRequirementMaster requirement, TrainingProposals proposal) {
		String id = new MembersServices().getNewId("TrainingExecutionMaster", "ExecutionID");
		Object[] params = new Object[] {id, requirement.getRequirementID(), proposal.getProposedDate(), proposal.getPropsedTime(), proposal.getMemberID().getMemberName(), proposal.getProposedDuration(), "Confirmed", requirement.getTotalCandidates()};
		this.template.update("insert into trainingExecutionMaster values (?, ?, ?, ?, ?, ?, ?, ?)", params);
		this.changeRequirementState(requirement.getRequirementID(), 4);
	}
	
	public void changeRequirementState(String requirementId, int state) {
		Object[] params = new Object[] {state, requirementId};
		this.template.update("update trainingRequirementMaster set requirementState = ? where requirementID = ?", params);
  }
  
	public TrainingExecutionMaster GetApprove(String requirementID) {
		TrainingExecutionMaster trainingExecution;
		
		Object[] params = new Object[] { requirementID };
		
		trainingExecution = this.template.queryForObject(
				"select * from trainingExecutionmaster where requirementID = ?", 
				params, 
				new TrainingExecutionMasterMapper()
		);
		
		return trainingExecution;
	}
	
	public void sendRequest(String requirementID) {
		Object[] params = new Object[] { new MembersServices().getNewId("RequirementSendId", "requestId"), requirementID };
		this.template.update("insert into RequirementSendId values (?, ?)", params);
		this.changeRequirementState(requirementID, 2);
	}
	
	public boolean checkEntryExistance(String tableName, String colName, String value) {
	    String sql = "SELECT count(*) FROM " + tableName + " WHERE " + colName + " = ?";

	    int count = this.template.queryForObject(
	    		sql, 
	    		new Object[] {value}, 
	    		Integer.class
	    );

	    return count > 0;
	}
	
	public List <TrainingRequirementMaster> readSendRequirement() {
		List <RequirementSendId> requirementSend = new ArrayList<RequirementSendId>();
		List <TrainingRequirementMaster> requirement = new ArrayList<TrainingRequirementMaster>();
		requirementSend = this.template.query("select * from RequirementSendId", new RequirementSendIdMapper());
		for (RequirementSendId requirementSendId : requirementSend) {
			requirement.add(requirementSendId.getRequirementID());
		}
		return requirement;
	}
	
	public void selectSlot(List <TrainingProposals> proposals, String requirementId) { 
		for (TrainingProposals trainingProposals : proposals) {
			Object[] params = new Object[] {1, trainingProposals.getProposalID()};
			this.template.update("update TrainingProposals set SELECTED = ? where proporsalID = ?",params);
		}
		this.changeRequirementState(requirementId, 3);
	}
	
//	public static void main(String[] args) {
		
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
//		List <TrainingProposals> proposals = new TrainerService().getAllSlot();
//		System.out.println("srivo");
//		for (TrainingProposals trainingProposals : proposals) {
//			System.out.println(trainingProposals.getProposalID());
//		}
//		requirementServices.selectSlot(proposals);
//		requirement = requirementServices.readSendRequirement();
		
//	}
}
