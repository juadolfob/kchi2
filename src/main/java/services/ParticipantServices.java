package services;

import java.util.ArrayList;
import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.jdbc.core.JdbcTemplate;

import mappers.TrainingParticipantMapper;
import models.TrainingParticipantData;

public class ParticipantServices {
	
	JdbcTemplate template;
	
	public ParticipantServices() {
		ApplicationContext context = new ClassPathXmlApplicationContext("spring-config.xml");
		this.template = (JdbcTemplate) context.getBean("mytemp");
	}
	
	public List<TrainingParticipantData> getParticipants(String RequerimentID){
		List<TrainingParticipantData> ParticipantsData = new ArrayList<TrainingParticipantData>();
		
		Object[] params = new Object[]{RequerimentID};
		ParticipantsData = this.template.query("select * from TrainingParticipantData where RequirementID = ?", params, new TrainingParticipantMapper());
	
		return ParticipantsData;
	}

	
}
