package com.databases;

import java.util.Arrays;
import java.util.Date;

import javax.persistence.*;


@Entity
public class AddClientInfo {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	private String firstName;
	private String lastName;
	private String email;
	private String dob;
	private double boxWeight;
	private String distanceFrom;
	private String distanceTo;
	private String pickUpDate;
	private String dropDate;
//	@ManyToOne
//	private AdminInfo admin;
	
//	public AdminInfo getAdmin() {
//		return admin;
//	}
//	public void setAdmin(AdminInfo admin) {
//		this.admin = admin;
//	}
	private int adminID;
	
	public int getAdminID() {
		return adminID;
	}
	public void setAdminID(int adminID) {
		this.adminID = adminID;
	}
	private String image;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public double getBoxWeight() {
		return boxWeight;
	}
	public void setBoxWeight(double boxWeight) {
		this.boxWeight = boxWeight;
	}
	public String getDistanceFrom() {
		return distanceFrom;
	}
	public void setDistanceFrom(String distanceFrom) {
		this.distanceFrom = distanceFrom;
	}
	public String getDistanceTo() {
		return distanceTo;
	}
	public void setDistanceTo(String distanceTo) {
		this.distanceTo = distanceTo;
	}
	public String getPickUpDate() {
		return pickUpDate;
	}
	public void setPickUpDate(String pickUpDate) {
		this.pickUpDate = pickUpDate;
	}
	public String getDropDate() {
		return dropDate;
	}
	public void setDropDate(String dropDate) {
		this.dropDate = dropDate;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	
	public AddClientInfo() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	

}
