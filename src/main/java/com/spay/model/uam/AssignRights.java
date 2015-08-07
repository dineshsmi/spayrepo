package com.spay.model.uam;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name="ASSIGN_RIGHTS")
public class AssignRights {

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator="ASSIGN_RIGHTS_Seq")
    @SequenceGenerator(name="ASSIGN_RIGHTS_Seq", sequenceName="ASSIGN_RIGHTS_Seq", allocationSize=1)
	@Column(name = "ID")
	private Integer Id;
	
	/*@Column(name="department_id")
	private String departmentid;*/
	
	@Column(name="department_name")
	private String departmentname;
	
	/*@Column(name="designation_id")
	private String designationid;*/
	
	@Column(name="designation")
	private String designation;
	
	@Column(name="functions")
	private String functions;
	
	@Column(name="functions_des")
	private String functionsdes;
	
	@Column(name="read")
	private String read;
	
	@Column(name="write")
	private String write;
	
	@Column(name="del")
	private String del;
	
	@Column(name="BRANCHCODE")
	private String branchcode;
	
	@Column(name="EMD_ID")
	private String empid;
	
	@Column(name="USERNAME")
	private String username;

	public Integer getId() {
		return Id;
	}

	public void setId(Integer id) {
		Id = id;
	}

	/*public String getDepartmentid() {
		return departmentid;
	}

	public void setDepartmentid(String departmentid) {
		this.departmentid = departmentid;
	}*/

	public String getDepartmentname() {
		return departmentname;
	}

	public void setDepartmentname(String departmentname) {
		this.departmentname = departmentname;
	}

	/*public String getDesignationid() {
		return designationid;
	}

	public void setDesignationid(String designationid) {
		this.designationid = designationid;
	}*/

	public String getDesignation() {
		return designation;
	}

	public void setDesignation(String designation) {
		this.designation = designation;
	}

	public String getFunctions() {
		return functions;
	}

	public void setFunctions(String functions) {
		this.functions = functions;
	}

	public String getFunctionsdes() {
		return functionsdes;
	}

	public void setFunctionsdes(String functionsdes) {
		this.functionsdes = functionsdes;
	}

	public String getRead() {
		return read;
	}

	public void setRead(String read) {
		this.read = read;
	}

	public String getWrite() {
		return write;
	}

	public void setWrite(String write) {
		this.write = write;
	}

	public String getDel() {
		return del;
	}

	public void setDel(String del) {
		this.del = del;
	}

	public String getBranchcode() {
		return branchcode;
	}

	public void setBranchcode(String branchcode) {
		this.branchcode = branchcode;
	}

	public String getEmpid() {
		return empid;
	}

	public void setEmpid(String empid) {
		this.empid = empid;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	
	
}
