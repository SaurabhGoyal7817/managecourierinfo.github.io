package com.databases;

import java.util.List;

import javax.persistence.*;
@Entity
public class AdminInfo {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int adminId;
	private String adminName;
	private String adminPassword;
	
//	@OneToMany
//	private List<AddClientInfo> client;
	
	
//	public List<AddClientInfo> getClient() {
//		return client;
//	}
//	public void setClient(List<AddClientInfo> client) {
//		this.client = client;
//	}
	public int getAdminId() {
		return adminId;
	}
	public void setAdminId(int adminId) {
		this.adminId = adminId;
	}
	public String getAdminName() {
		return adminName;
	}
	public void setAdminName(String adminName) {
		this.adminName = adminName;
	}
	public String getAdminPassword() {
		return adminPassword;
	}
	public void setAdminPassword(String adminPassword) {
		this.adminPassword = adminPassword;
	}
	@Override
	public String toString() {
		return "AdminInfo [adminId=" + adminId + ", adminName=" + adminName + ", adminPassword=" + adminPassword + "]";
	}
	public AdminInfo(int adminId, String adminName, String adminPassword) {
		super();
		this.adminId = adminId;
		this.adminName = adminName;
		this.adminPassword = adminPassword;
	}
	public AdminInfo() {
		super();
		// TODO Auto-generated constructor stub
	}
	

}
