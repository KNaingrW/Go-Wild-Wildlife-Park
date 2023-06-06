package com.csm.gwwp1;

public class Animal {

	private int animalId;
	private String animalName;
	private String animalGender;
	private String yearArrived;
	private int enclosureId;
	private int keeperId;
	private int speciesId;
	private int dietId;
	public int getAnimalId() {
		return animalId;
	}
	public void setAnimalId(int animalId) {
		this.animalId = animalId;
	}
	public String getAnimalName() {
		return animalName;
	}
	public void setAnimalName(String animalName) {
		this.animalName = animalName;
	}
	public String getAnimalGender() {
		return animalGender;
	}
	public void setAnimalGender(String animalGender) {
		this.animalGender = animalGender;
	}
	public String getYearArrived() {
		return yearArrived;
	}
	public void setYearArrived(String yearArrived) {
		this.yearArrived = yearArrived;
	}
	public int getEnclosureId() {
		return enclosureId;
	}
	public void setEnclosureId(int enclosureId) {
		this.enclosureId = enclosureId;
	}
	public int getKeeperId() {
		return keeperId;
	}
	public void setKeeperId(int keeperId) {
		this.keeperId = keeperId;
	}
	public int getSpeciesId() {
		return speciesId;
	}
	public void setSpeciesId(int speciesId) {
		this.speciesId = speciesId;
	}
	public int getDietId() {
		return dietId;
	}
	public void setDietId(int dietId) {
		this.dietId = dietId;
	}

	
	public Animal(String animalName, String animalGender, String yearArrived, int enclosureId, int keeperId,
			int speciesId, int dietId) {
		super();
		this.animalName = animalName;
		this.animalGender = animalGender;
		this.yearArrived = yearArrived;
		this.enclosureId = enclosureId;
		this.keeperId = keeperId;
		this.speciesId = speciesId;
		this.dietId = dietId;
	}
	public Animal(int animalId, String animalName, String animalGender, String yearArrived, int enclosureId, int keeperId,
			int speciesId, int dietId) {
		super();
		this.animalId = animalId;
		this.animalName = animalName;
		this.animalGender = animalGender;
		this.yearArrived = yearArrived;
		this.enclosureId = enclosureId;
		this.keeperId = keeperId;
		this.speciesId = speciesId;
		this.dietId = dietId;
	}
	
}
