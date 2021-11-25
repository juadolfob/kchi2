package models;

public class TrainingParticipantData {

	private String employeeID;
	private String employeeName;
	private String email;
	private String contact;
	private String attendanceStatus;
	private TrainingRequirementMaster requirementID;
	
	public String getEmployeeID() {
		return employeeID;
	}
	public void setEmployeeID(String employeeID) {
		this.employeeID = employeeID;
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
	public void setContact(String contact) {
		this.contact = contact;
	}
	public String getAttendanceStatus() {
		return attendanceStatus;
	}
	public void setAttendanceStatus(String attendanceStatus) {
		this.attendanceStatus = attendanceStatus;
	}
	public TrainingRequirementMaster getRequirementID() {
		return requirementID;
	}
	public void setRequirementID(TrainingRequirementMaster requirementID) {
		this.requirementID = requirementID;
	}
}
