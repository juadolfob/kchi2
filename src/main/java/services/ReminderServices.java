package services;

import java.util.ArrayList;
import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.jdbc.core.JdbcTemplate;

import mappers.ReminderMapper;
import models.Reminder;

public class ReminderServices {

	JdbcTemplate template;

	public ReminderServices() {
		ApplicationContext context = new ClassPathXmlApplicationContext("spring-config.xml");
		this.template = (JdbcTemplate) context.getBean("mytemp");
	}

	public List<Reminder> getAll() {
		List<Reminder> member = new ArrayList<>();
		Object[] params = new Object[] {};
		member = this.template.query("select * from Reminders", params, new ReminderMapper());
		return member;
	}

	public List<Reminder> getByID(int ID) {
		List<Reminder> member = new ArrayList<>();
		Object[] params = new Object[] { ID };
		member = this.template.query("select * from Reminders where ID=?", params, new ReminderMapper());
		return member;
	}

	public void put(int id, String reminder) {
		Object[] params = new Object[] { id, reminder };
		this.template.update("INSERT INTO REMINDERS VALUES (?, ?)", params);
	}

	public void update(int id, String reminder) {
		Object[] params = new Object[] { reminder, id };
		this.template.update("UPDATE REMINDERS SET REMINDER = ? WHERE ID = ?", params);
	}

	public void delete(int ID) {
		Object[] params = new Object[] { ID };
		this.template.update("DELETE FROM REMINDERS WHERE ID = ?", params);
	}
}
