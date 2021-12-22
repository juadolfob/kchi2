package models;

import java.util.Objects;

public class Reminder {

	private int id;
	private String Reminder;

	public Reminder() {
	}

	Reminder(String Reminder) {

		this.Reminder = Reminder;
	}

	public int getId() {
		return this.id;
	}

	public String getReminder() {
		return this.Reminder;
	}

	public void setId(int i) {
		this.id = i;
	}

	public void setReminder(String Reminder) {
		this.Reminder = Reminder;
	}

	@Override
	public boolean equals(Object o) {

		if (this == o)
			return true;
		if (!(o instanceof Reminder))
			return false;
		Reminder reminder = (Reminder) o;
		return Objects.equals(this.id, reminder.id) && Objects.equals(this.Reminder, reminder.Reminder);
	}

	@Override
	public int hashCode() {
		return Objects.hash(this.id, this.Reminder);
	}

	@Override
	public String toString() {
		return "Employee{" + "id=" + this.id + ", Reminder='" + this.Reminder + "\'}";
	}

	public String toJSON() {
		return "{\"id\":" + this.id + ", \"Reminder\":\"" + this.Reminder.toString() + "\"}";
	}
}