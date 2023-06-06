package com.csm.gwwp1;

public class Species {
	
	private int speciesId;
	private String speciesType;
	private String speciesGroup;
	private String lifeStyle;
	private String conservationStatus;
	public int getSpeciesId() {
		return speciesId;
	}
	public void setSpeciesId(int speciesId) {
		this.speciesId = speciesId;
	}
	public String getSpeciesType() {
		return speciesType;
	}
	public void setSpeciesType(String speciesType) {
		this.speciesType = speciesType;
	}
	public String getSpeciesGroup() {
		return speciesGroup;
	}
	public void setSpeciesGroup(String speciesGroup) {
		this.speciesGroup = speciesGroup;
	}
	public String getLifeStyle() {
		return lifeStyle;
	}
	public void setLifeStyle(String lifeStyle) {
		this.lifeStyle = lifeStyle;
	}
	public String getConservationStatus() {
		return conservationStatus;
	}
	public void setConservationStatus(String conservationStatus) {
		this.conservationStatus = conservationStatus;
	}
	public Species(String speciesType, String speciesGroup, String lifeStyle, String conservationStatus) {
		super();
		this.speciesType = speciesType;
		this.speciesGroup = speciesGroup;
		this.lifeStyle = lifeStyle;
		this.conservationStatus = conservationStatus;
	}
	public Species(int speciesId, String speciesType, String speciesGroup, String lifeStyle,
			String conservationStatus) {
		super();
		this.speciesId = speciesId;
		this.speciesType = speciesType;
		this.speciesGroup = speciesGroup;
		this.lifeStyle = lifeStyle;
		this.conservationStatus = conservationStatus;
	}
	
}
