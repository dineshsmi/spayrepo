package com.spay.model.merchant;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name="BRANCH_CODE")
public class BranchCode {
	
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator="branch_Seq")
    @SequenceGenerator(name="branch_Seq", sequenceName="branch_Seq", allocationSize=1)
	@Column(name = "ID")
	private long Id;
	
	@Column(name="CODE")
	private String code;
	
	
	@Column(name="BRANCH_NAME")
	private String branchname;


	public long getId() {
		return Id;
	}


	public void setId(long id) {
		Id = id;
	}


	public String getCode() {
		return code;
	}


	public void setCode(String code) {
		this.code = code;
	}


	public String getBranchname() {
		return branchname;
	}


	public void setBranchname(String branchname) {
		this.branchname = branchname;
	}
	
	

}
