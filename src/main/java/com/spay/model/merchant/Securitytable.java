package com.spay.model.merchant;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;


@Entity
@Table(name="security_table")

public class Securitytable {

	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator="security_Seq")
    @SequenceGenerator(name="security_Seq", sequenceName="security_Seq", allocationSize=1)
	@Column(name = "security_id")
	private long securityid;
	
	@Column(name="security_question")
	private String securityques;
	
	
	@Column(name="security_answer")
	private String securityans;


	/**
	 * @return the securityid
	 */
	public long getSecurityid() {
		return securityid;
	}


	/**
	 * @param securityid the securityid to set
	 */
	public void setSecurityid(long securityid) {
		this.securityid = securityid;
	}


	/**
	 * @return the securityques
	 */
	public String getSecurityques() {
		return securityques;
	}


	/**
	 * @param securityques the securityques to set
	 */
	public void setSecurityques(String securityques) {
		this.securityques = securityques;
	}


	/**
	 * @return the securityans
	 */
	public String getSecurityans() {
		return securityans;
	}


	/**
	 * @param securityans the securityans to set
	 */
	public void setSecurityans(String securityans) {
		this.securityans = securityans;
	}
	
	

	
}
