package models;

import java.util.Date;

public class TrainingProposals {
	private String proposalID;
	private TrainingRequirementMaster requirementID;
	private int selected;
	private LDMemberData memberID;
	private String proposedDate;
	private String PropsedTime;
	private int ProposedDuration;
	
	public String getProposalID() {
		return proposalID;
	}
	public void setProposalID(String proposalID) {
		this.proposalID = proposalID;
	}
	public TrainingRequirementMaster getRequirementID() {
		return requirementID;
	}
	public void setRequirementID(TrainingRequirementMaster requirementID) {
		this.requirementID = requirementID;
	}
	public int getSelected() {
		return selected;
	}
	public void setSelected(int selected) {
		this.selected = selected;
	}
	public LDMemberData getMemberID() {
		return memberID;
	}
	public void setMemberID(LDMemberData memberID) {
		this.memberID = memberID;
	}
	public String getProposedDate() {
		return proposedDate;
	}
	public void setProposedDate(String proposedDate) {
		this.proposedDate = proposedDate;
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