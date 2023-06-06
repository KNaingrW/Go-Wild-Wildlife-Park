package com.csm.gwwp1;

public class Enclosure {
	
	private int enclosureId;
	private String enclosureLocation;
	private String enclosureType;
	public int getEnclosureId() {
		return enclosureId;
	}
	public void setEnclosureId(int enclosureId) {
		this.enclosureId = enclosureId;
	}
	public String getEnclosureLocation() {
		return enclosureLocation;
	}
	public void setEnclosureLocation(String enclosureLocation) {
		this.enclosureLocation = enclosureLocation;
	}
	public String getEnclosureType() {
		return enclosureType;
	}
	public void setEnclosureType(String enclosureType) {
		this.enclosureType = enclosureType;
	}
	public Enclosure(String enclosureLocation, String enclosureType) {
		super();
		this.enclosureLocation = enclosureLocation;
		this.enclosureType = enclosureType;
	}
	public Enclosure(int enclosureId, String enclosureLocation, String enclosureType) {
		super();
		this.enclosureId = enclosureId;
		this.enclosureLocation = enclosureLocation;
		this.enclosureType = enclosureType;
	}
	
	

}
