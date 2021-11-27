package models;

public class VerticalMaster {
	
	
	private String verticalName;
	private String vid;
	private LDMemberData verticalLBPID;
	
	
	public LDMemberData getVerticalLBPID() {
		return verticalLBPID;
	}
	public void setVerticalLBPID(LDMemberData verticalLBPID) {
		this.verticalLBPID = verticalLBPID;
	}
	public String getVid() {
		return vid;
	}
	public void setVid(String vid) {
		this.vid = vid;
	}
	public String getVerticalName() {
		return verticalName;
	}
	public void setVerticalName(String verticalName) {
		this.verticalName = verticalName;
	}
	
}
