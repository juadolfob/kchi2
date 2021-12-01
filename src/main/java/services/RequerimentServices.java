package services;

import java.util.ArrayList;
import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.jdbc.core.JdbcTemplate;

import mappers.LDRoleMapper;
import mappers.TrainingRequirementMasterMapper;
import mappers.VerticalMasterMapper;
import models.LDMemberData;
import models.TrainingRequirementMaster;

public class RequerimentServices {
	
	JdbcTemplate template;

	public RequerimentServices() {
	ApplicationContext context = new ClassPathXmlApplicationContext("spring-config.xml");
	this.template = (JdbcTemplate) context.getBean("mytemp");
	}

	
	public TrainingRequirementMaster CreateRequestRequeriment(TrainingRequirementMaster trainingrequirementMaster ){
		TrainingRequirementMaster trainingReq = new TrainingRequirementMaster();
		
		return trainingReq;
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
////		requirementMaster.getTotalDurationDays()
//		
//	}
}
