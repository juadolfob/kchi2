package models;

public class RequirementSendId {

	private String requestID;
	private TrainingRequirementMaster requirementID;
	public String getRequestID() {
		return requestID;
	}
	public void setRequestID(String requestID) {
		this.requestID = requestID;
	}
	public TrainingRequirementMaster getRequirementID() {
		return requirementID;
	}
	public void setRequirementID(TrainingRequirementMaster requirementID) {
		this.requirementID = requirementID;
	}
}
