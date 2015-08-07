package com.spay.model.uam;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;


@Entity
@Table(name="AUDIT_TRIAL")
public class AuditTrial {

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator="audit_trial_Seq")
    @SequenceGenerator(name="audit_trial_Seq", sequenceName="audit_trial_Seq", allocationSize=1)
	@Column(name = "ID")
	private Integer Id;
	
	@Column(name="USER_NAME")
	private String username;
	
	@Column(name="LOG_DATE")
	private String logdate;
	
	@Column(name="DESCRIPTION")
	private String description;

	public Integer getId() {
		return Id;
	}

	public void setId(Integer id) {
		Id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getLogdate() {
		return logdate;
	}

	public void setLogdate(String logdate) {
		this.logdate = logdate;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
	
	
}
