package com.ed.model;

public class EmpAddress {
	 private String empName; 
	 private int empNo;
	 private String street;
	 private String city;
	 private String state;
	 private String code;
	public EmpAddress(String empName, int empNo, String street, String city, String state,String code) {
		super();
		this.empName = empName;
		this.empNo = empNo;
		this.street = street;
		this.city = city;
		this.state = state;
		this.code = code;
	}
	

	public String getEmpName() {
		return empName;
	}
	public void setEmpName(String empName) {
		this.empName = empName;
	}
	public int getEmpNo() {
		return empNo;
	}
	public void setEmpNo(int empNo) {
		this.empNo = empNo;
	}
	public String getStreet() {
		return street;
	}
	public void setStreet(String street) {
		this.street = street;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	@Override
	public String toString() {
		return "EmpAddress [empName=" + empName + ", empNo=" + empNo + ", street=" + street + ", city=" + city
				+ ", state=" + state + ", code=" + code + "]";
	}
	 
	 
}
