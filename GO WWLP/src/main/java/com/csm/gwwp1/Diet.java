package com.csm.gwwp1;

public class Diet {
	
    private int dietId;
    private String dietType;
    private String numberofFeeds;
    
	public int getDietId() {
		return dietId;
	}
	public void setDietId(int dietId) {
		this.dietId = dietId;
	}
	public String getDietType() {
		return dietType;
	}
	public void setDietType(String dietType) {
		this.dietType = dietType;
	}
	public String getNumberofFeeds() {
		return numberofFeeds;
	}
	public void setNumberofFeeds(String numberofFeeds) {
		this.numberofFeeds = numberofFeeds;
	}
	public Diet(String dietType, String numberofFeeds) {
		super();
		this.dietType = dietType;
		this.numberofFeeds = numberofFeeds;
	}
	public Diet(int dietId, String dietType, String numberofFeeds) {
		super();
		this.dietId = dietId;
		this.dietType = dietType;
		this.numberofFeeds = numberofFeeds;
	}
}
