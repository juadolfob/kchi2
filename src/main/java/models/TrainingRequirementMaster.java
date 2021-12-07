package models;

import java.util.Date;

public class TrainingRequirementMaster {
	private String requirementID;
	private Date requirementReceivedDate;
	private String requirementUser;
	private VerticalMaster  requirementUserVertical;
	private String trainingArea;
	private String trainingDescription;
	private Date requestedTrainingStartDate;
	private int totalCandidates;
	private String trainingTimeZone;
	private int totalDurationDays;
	private int requirementState;
	
	public String getRequirementID() {
		return requirementID;
	}
	public void setRequirementID(String requirementID) {
		this.requirementID = requirementID;
	}
	public Date getRequirementReceivedDate() {
		return requirementReceivedDate;
	}
	public void setRequirementReceivedDate(Date requirementReceivedDate) {
		this.requirementReceivedDate = requirementReceivedDate;
	}
	public String getRequirementUser() {
		return requirementUser;
	}
	public void setRequirementUser(String requirementUser) {
		this.requirementUser = requirementUser;
	}
	public VerticalMaster getRequirementUserVertical() {
		return requirementUserVertical;
	}
	public void setRequirementUserVertical(VerticalMaster requirementUserVertical) {
		this.requirementUserVertical = requirementUserVertical;
	}
	public String getTrainingArea() {
		return trainingArea;
	}
	public void setTrainingArea(String trainingArea) {
		this.trainingArea = trainingArea;
	}
	public String getTrainingDescription() {
		return trainingDescription;
	}
	public void setTrainingDescription(String trainingDescription) {
		this.trainingDescription = trainingDescription;
	}
	public Date getRequestedTrainingStartDate() {
		return requestedTrainingStartDate;
	}
	public void setRequestedTrainingStartDate(Date requestedTrainingStartDate) {
		this.requestedTrainingStartDate = requestedTrainingStartDate;
	}
	public int getTotalCandidates() {
		return totalCandidates;
	}
	public void setTotalCandidates(int totalCandidates) {
		this.totalCandidates = totalCandidates;
	}
	public String getTrainingTimeZone() {
		return trainingTimeZone;
	}
	public void setTrainingTimeZone(String trainingTimeZone) {
		this.trainingTimeZone = trainingTimeZone;
	}
	public int getTotalDurationDays() {
		return totalDurationDays;
	}
	public void setTotalDurationDays(int totalDurationDays) {
		this.totalDurationDays = totalDurationDays;
	}
	public int getRequirementState() {
		return this.requirementState;
	}
	public void setRequirementState(int requirementState) {
		this.requirementState = requirementState;
	}
}
