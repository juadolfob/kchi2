package models;

public class TrainingParticipantData {

	private String employeeID;
	private String employeeName;
	private String email;
	private String contact;
	private String attendanceStatus;
	private String RequirementID;
	
	public String getEmployeeID() {
		return employeeID;
	}
	public void setEmployeeID(String string) {
		this.employeeID = string;
	}
	public String getEmployeeName() {
		return employeeName;
	}
	public void setEmployeeName(String employeeName) {
		this.employeeName = employeeName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getContact() {
		return contact;
	}
	public void setContact(String i) {
		this.contact = i;
	}
	public String getAttendanceStatus() {
		return attendanceStatus;
	}
	public void setAttendanceStatus(String attendanceStatus) {
		this.attendanceStatus = attendanceStatus;
	}
	public String getRequirementID(String RequirementID) {
		return this.RequirementID;
	}
	public void setRequirementID(String RequirementID) {
		this.RequirementID = RequirementID;
	}
}
