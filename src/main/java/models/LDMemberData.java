package models;

public class LDMemberData {

	private String memberId;
	private String memberName;
	private String memberContact;
	private String memberLocation;
	private String memberEmail;
	private LDRoles ldRoleID;
	
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public String getMemberName() {
		return memberName;
	}
	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}
	public String getMemberContact() {
		return memberContact;
	}
	public void setMemberContact(String memberContact) {
		this.memberContact = memberContact;
	}
	public String getMemberLocation() {
		return memberLocation;
	}
	public void setMemberLocation(String memberLocation) {
		this.memberLocation = memberLocation;
	}
	public String getMemberEmail() {
		return memberEmail;
	}
	public void setMemberEmail(String memberEmail) {
		this.memberEmail = memberEmail;
	}
	public LDRoles getLdRoleID() {
		return ldRoleID;
	}
	public void setLdRoleID(LDRoles ldRoleID) {
		this.ldRoleID = ldRoleID;
	}
}
