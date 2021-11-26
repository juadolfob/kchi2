package models;

import java.util.Date;

public class TrainingProposals {

	private String ExecutionID;
	private Date proposedDate;
	private LDMemberData memberID;
	private String PropsedTime;
	private int ProposedDuration;

	private String proposalID;
	public String getProposalID() {
		return proposalID;
	}
	public void setProposalID(String proposalID) {
		this.proposalID = proposalID;
	}
	public String getExecutionID() {
		return ExecutionID;
	}
	public void setExecutionID(String executionID) {
		ExecutionID = executionID;
	}
	public Date getProposedDate() {
		return proposedDate;
	}
	public void setProposedDate(Date proposedDate) {
		this.proposedDate = proposedDate;
	}
	public LDMemberData getMemberID() {
		return memberID;
	}
	public void setMemberID(LDMemberData memberID) {
		this.memberID = memberID;
	}
	public String getPropsedTime() {
		return PropsedTime;
	}
	public void setPropsedTime(String propsedTime) {
		PropsedTime = propsedTime;
	}
	public int getProposedDuration() {
		return ProposedDuration;
	}
	public void setProposedDuration(int proposedDuration) {
		ProposedDuration = proposedDuration;
	}
	
}
