package com.spay.model.merchant;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name="DEPARTMENT_DESIGNATION")
public class DepartmentDesignation {
	
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator="dep_des_Seq")
    @SequenceGenerator(name="dep_des_Seq", sequenceName="dep_des_Seq", allocationSize=1)
	@Column(name = "ID")
	private long Id;
	
	@Column(name="DEPARTMENT_ID")
	private long departmentid;
	
	
	@Column(name="DEPARTMENT_NAME")
	private String departmentname;
	
	@Column(name="DESIGNATION_ID")
	private long designationid;
	
	
	@Column(name="DESIGNATION_NAME")
	private String designationname;


	public long getId() {
		return Id;
	}


	public void setId(long id) {
		Id = id;
	}


	public long getDepartmentid() {
		return departmentid;
	}


	public void setDepartmentid(long departmentid) {
		this.departmentid = departmentid;
	}


	public String getDepartmentname() {
		return departmentname;
	}


	public void setDepartmentname(String departmentname) {
		this.departmentname = departmentname;
	}


	public long getDesignationid() {
		return designationid;
	}


	public void setDesignationid(long designationid) {
		this.designationid = designationid;
	}


	public String getDesignationname() {
		return designationname;
	}


	public void setDesignationname(String designationname) {
		this.designationname = designationname;
	}
	
	
}
