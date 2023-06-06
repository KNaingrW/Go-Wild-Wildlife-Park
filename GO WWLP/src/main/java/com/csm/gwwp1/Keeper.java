package com.csm.gwwp1;

public class Keeper {

	private int keeperId;
	private String keeperName;
	private String dateofBirth;
	private String keeperRank;
	
	public int getKeeperId() {
		return keeperId;
	}
	public void setKeeperId(int keeperId) {
		this.keeperId = keeperId;
	}
	public String getKeeperName() {
		return keeperName;
	}
	public void setKeeperName(String keeperName) {
		this.keeperName = keeperName;
	}
	public String getDateofBirth() {
		return dateofBirth;
	}
	public void setDateofBirth(String dateofBirth) {
		this.dateofBirth = dateofBirth;
	}
	public String getKeeperRank() {
		return keeperRank;
	}
	public void setKeeperRank(String keeperRank) {
		this.keeperRank = keeperRank;
	}
	public Keeper(String keeperName, String dateofBirth, String keeperRank) {
		super();
		this.keeperName = keeperName;
		this.dateofBirth = dateofBirth;
		this.keeperRank = keeperRank;
	}
	public Keeper(int keeperId, String keeperName, String dateofBirth, String keeperRank) {
		super();
		this.keeperId = keeperId;
		this.keeperName = keeperName;
		this.dateofBirth = dateofBirth;
		this.keeperRank = keeperRank;
	}
	
	
	}
	
	
	
	

