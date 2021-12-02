package services;

import java.util.ArrayList;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;

import mappers.TrainingParticipantMapper;
import models.TrainingParticipantData;

public class ParticipantServices {
	
	JdbcTemplate template;
	
	@SuppressWarnings("unchecked")
	public List<TrainingParticipantData> getParticipants(String RequerimentID){
		List<TrainingParticipantData> ParticipantsData = new ArrayList<TrainingParticipantData>();
		
		Object[] params = new Object[]{RequerimentID};
		ParticipantsData = this.template.query("select * from TrainingParticipantData where RequirementID = ?", params, new TrainingParticipantMapper());
	
		return ParticipantsData;
	}

	
}
