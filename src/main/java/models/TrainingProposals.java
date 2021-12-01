package models;

import java.util.Date;

public class TrainingProposals {

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
	public LDMemberData getMember() {
		return member;
	}
	public void setMember(LDMemberData member) {
		this.member = member;
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
	public int getMemberID() {
		return memberID;
	}
	public void setMemberID(int memberID) {
		this.memberID = memberID;
	}
	public String getProposalID() {
		return proposalID;
	}
	public void setProposalID(String proposalID) {
		this.proposalID = proposalID;
	}
	
	private String ExecutionID;
	private Date proposedDate;
	private LDMemberData member;
	private String PropsedTime;
	private int ProposedDuration;
	private int memberID;
	private String proposalID;
	
	
}
