package services;

import java.util.ArrayList;
import java.util.List;

import models.LDMemberData;
import models.TrainingRequirementMaster;

public class RequerimentServices {

	
	public TrainingRequirementMaster createRequestRequeriment(TrainingRequirementMaster trainingRequirementMaster ){
		Object[] params = new Object[]{trainingRequirementMaster.getRequirementID(), trainingRequirementMaster.getRequirementReceivedDate(), trainingRequirementMaster.getRequirementUser(), trainingRequirementMaster.getRequirementUserVertical().getVid(), trainingRequirementMaster.getTrainingArea(), trainingRequirementMaster.getTrainingDescription(), trainingRequirementMaster.getRequestedTrainingStartDate(), trainingRequirementMaster.getTotalCandidates(), trainingRequirementMaster.getTrainingTimeZone(), trainingRequirementMaster.getTotalDurationDays()};
		this.template.update("insert into trainingRequirementMaster values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)", params);
		TrainingRequirementMaster newRequirement = this.ReadRequestRequeriment(trainingRequirementMaster.getRequirementID());
		return newRequirement;
	}

	public TrainingRequirementMaster ReadRequestRequeriment(String RequerimentID){
		TrainingRequirementMaster readtrainingReq = new TrainingRequirementMaster();
		
		return readtrainingReq;
	}
	
	
	public List <TrainingRequirementMaster> ReadAllRequestRequeriment(){
		List <TrainingRequirementMaster> readalltrainingReq = new ArrayList<TrainingRequirementMaster>();
		
		return readalltrainingReq;
	}
	
}
