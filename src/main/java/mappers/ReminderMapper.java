package mappers;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import models.Reminder;

public class ReminderMapper implements RowMapper<Reminder> {

	@Override
	public Reminder mapRow(ResultSet result, int arg1) throws SQLException {

		Reminder memberData = new Reminder();
		memberData.setId(result.getInt("ID"));
		memberData.setReminder(result.getString("Reminder"));

		return memberData;
	}

}
