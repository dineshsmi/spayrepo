package com.spay.model.merchant;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name="admin")
public class Admin {
	
	/*@Id
	@Column(name = "id")
	private long Id;*/
	
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator="admin_Seq")
    @SequenceGenerator(name="admin_Seq", sequenceName="admin_Seq", allocationSize=1)
	@Column(name = "ID")
	private long Id;
	
	@Column(name="admin_id")
	private String adminid;
	
	
	@Column(name="admin_username")
	private String username;
	
	
	@Column(name="admin_password")
	private String password;
	
	@Column(name="ADMIN_NAME")
	private String adminname;
	

	@Column(name="admin_auto_password")
	private String autopassword;
	
	@Column(name="select_question")
	private String selectquestion;
	
	@Column(name="answer")
	private String answer;
	
	@Column(name="email_id")
	private String emailid;
	
	@Column(name="password1")
	private String passwd1;
	
	@Column(name="password2")
	private String passwd2;
	
	/**
	 * @return the id
	 */
	public long getId() {
		return Id;
	}


	/**
	 * @param id the id to set
	 */
	public void setId(long id) {
		Id = id;
	}


	

	

	/**
	 * @return the adminid
	 */
	public String getAdminid() {
		return adminid;
	}


	/**
	 * @param adminid the adminid to set
	 */
	public void setAdminid(String adminid) {
		this.adminid = adminid;
	}


	/**
	 * @return the username
	 */
	public String getUsername() {
		return username;
	}


	/**
	 * @param username the username to set
	 */
	public void setUsername(String username) {
		this.username = username;
	}


	/**
	 * @return the password
	 */
	public String getPassword() {
		return password;
	}


	/**
	 * @param password the password to set
	 */
	public void setPassword(String password) {
		this.password = password;
	}


	public String getAdminname() {
		return adminname;
	}


	public void setAdminname(String adminname) {
		this.adminname = adminname;
	}
	
	/**
	 * @return the autopassword
	 */
	public String getAutopassword() {
		return autopassword;
	}


	/**
	 * @param autopassword the autopassword to set
	 */
	public void setAutopassword(String autopassword) {
		this.autopassword = autopassword;
	}


	/**
	 * @return the selectquestion
	 */
	public String getSelectquestion() {
		return selectquestion;
	}


	/**
	 * @param selectquestion the selectquestion to set
	 */
	public void setSelectquestion(String selectquestion) {
		this.selectquestion = selectquestion;
	}


	/**
	 * @return the answer
	 */
	public String getAnswer() {
		return answer;
	}


	/**
	 * @param answer the answer to set
	 */
	public void setAnswer(String answer) {
		this.answer = answer;
	}


	/**
	 * @return the emailid
	 */
	public String getEmailid() {
		return emailid;
	}


	/**
	 * @param emailid the emailid to set
	 */
	public void setEmailid(String emailid) {
		this.emailid = emailid;
	}


	/**
	 * @return the passwd1
	 */
	public String getPasswd1() {
		return passwd1;
	}


	/**
	 * @param passwd1 the passwd1 to set
	 */
	public void setPasswd1(String passwd1) {
		this.passwd1 = passwd1;
	}


	/**
	 * @return the passwd2
	 */
	public String getPasswd2() {
		return passwd2;
	}


	/**
	 * @param passwd2 the passwd2 to set
	 */
	public void setPasswd2(String passwd2) {
		this.passwd2 = passwd2;
	}
	
	
	
}
