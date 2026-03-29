package com.entity;

public class Specialist {
	private int id;
	private String specialistName;

	public Specialist() {
		super();
	}

	public Specialist(int id, String specialisName) {
		super();
		this.id = id;
		this.specialistName = specialisName;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getSpecialisName() {
		return specialistName;
	}

	public void setSpecialisName(String specialisName) {
		this.specialistName = specialisName;
	}

}
