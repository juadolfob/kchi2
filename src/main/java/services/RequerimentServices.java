package services;

import java.util.ArrayList;
import java.util.List;

import models.LDMemberData;
import models.TrainingRequirementMaster;

public class RequerimentServices {

	
	public TrainingRequirementMaster CreateRequestRequeriment(TrainingRequirementMaster trainingrequirementMaster ){
		TrainingRequirementMaster trainingReq = new TrainingRequirementMaster();
		
		return trainingReq;
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
