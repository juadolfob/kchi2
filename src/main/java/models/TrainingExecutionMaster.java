package models;

import java.util.Date;

import models.util.DateFormatter;

public class TrainingExecutionMaster {

	private String executionID;
	private Date confirmedDate;
	private String confirmedTime;
	private int totalHRS;
	private String proposalStatus;
	private int totalParticipantsAllowed;
	private String requirementID;
	private LDMemberData trainer;
	
	public String getExecutionID() {
		return executionID;
	}
	public void setExecutionID(String executionID) {
		this.executionID = executionID;
	}
	public Date getConfirmedDate() {
		return confirmedDate;
	}
	public void setConfirmedDate(Date confirmedDate) {
		this.confirmedDate = confirmedDate;
	}
	public String getConfirmedTime() {
		return confirmedTime;
	}
	public void setConfirmedTime(String confirmTime) {
		this.confirmedTime = confirmTime;
	}
	public int getTotalHRS() {
		return totalHRS;
	}
	public void setTotalHRS(int totalHRS) {
		this.totalHRS = totalHRS;
	}
	public String getProposalStatus() {
		return proposalStatus;
	}
	public void setProposalStatus(String propsalStatus) {
		this.proposalStatus = propsalStatus;
	}
	public int getTotalParticipantsAllowed() {
		return totalParticipantsAllowed;
	}
	public void setTotalParticipantsAllowed(int totalParticpantsAllowed) {
		this.totalParticipantsAllowed = totalParticpantsAllowed;
	}
	public String getRequirementID() {
		return requirementID;
	}
	public void setRequirementID(String requirementId) {
		this.requirementID = requirementId;
	}
	public LDMemberData getTrainer() {
		return trainer;
	}
	public void setTrainer(LDMemberData trainer) {
		this.trainer = trainer;
	}
	public String getFormattedConfirmedDate() {
		return DateFormatter.getFormattedDate(this.confirmedDate);
	}
}
