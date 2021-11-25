package models;

import java.util.Date;

public class TrainingExecutionMaster {

	private String executionID;
	private Date confiredDate;
	private String confirmTime;
	private int totalHRS;
	private String propsalStatus;
	private int totalParticpantsAllowed;
	private TrainingRequirementMaster requirementID;
	private LDMemberData trainer;
	
	public String getExecutionID() {
		return executionID;
	}
	public void setExecutionID(String executionID) {
		this.executionID = executionID;
	}
	public Date getConfiredDate() {
		return confiredDate;
	}
	public void setConfiredDate(Date confiredDate) {
		this.confiredDate = confiredDate;
	}
	public String getConfirmTime() {
		return confirmTime;
	}
	public void setConfirmTime(String confirmTime) {
		this.confirmTime = confirmTime;
	}
	public int getTotalHRS() {
		return totalHRS;
	}
	public void setTotalHRS(int totalHRS) {
		this.totalHRS = totalHRS;
	}
	public String getPropsalStatus() {
		return propsalStatus;
	}
	public void setPropsalStatus(String propsalStatus) {
		this.propsalStatus = propsalStatus;
	}
	public int getTotalParticpantsAllowed() {
		return totalParticpantsAllowed;
	}
	public void setTotalParticpantsAllowed(int totalParticpantsAllowed) {
		this.totalParticpantsAllowed = totalParticpantsAllowed;
	}
	public TrainingRequirementMaster getRequirementID() {
		return requirementID;
	}
	public void setRequirementID(TrainingRequirementMaster requirementID) {
		this.requirementID = requirementID;
	}
	public LDMemberData getTrainer() {
		return trainer;
	}
	public void setTrainer(LDMemberData trainer) {
		this.trainer = trainer;
	}
}
