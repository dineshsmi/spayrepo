package com.spay.model.transaction;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name="PAYMENT_SETUP")
public class PaymentSetup {

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator="payment_setup_Seq")
    @SequenceGenerator(name="payment_setup_Seq", sequenceName="payment_setup_Seq", allocationSize=1)
	@Column(name = "ID")
	private Integer Id;
	
	
	@Column(name="merchant_Id")
	private String merchantId;
	
	@Column(name="payment_condent")
	private String paymentcondent;
	
	@Column(name="modified_date")
	private Date modifieddate;
	
	@Column(name="status")
	private String status;
	
	@Column(name="effective_date")
	private String effectivedate;
	
	@Column(name="information")
	private String information;
	
	@Column(name="display")
	private String display;
	
	@Column(name="edit")
	private String edit;
	
	@Column(name="require")
	private String require;

	public Integer getId() {
		return Id;
	}

	public void setId(Integer id) {
		Id = id;
	}

	public String getMerchantId() {
		return merchantId;
	}

	public void setMerchantId(String merchantId) {
		this.merchantId = merchantId;
	}

		

	public Date getModifieddate() {
		return modifieddate;
	}

	public void setModifieddate(Date modifieddate) {
		this.modifieddate = modifieddate;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public String getPaymentcondent() {
		return paymentcondent;
	}

	public void setPaymentcondent(String paymentcondent) {
		this.paymentcondent = paymentcondent;
	}

	public String getEffectivedate() {
		return effectivedate;
	}

	public void setEffectivedate(String effectivedate) {
		this.effectivedate = effectivedate;
	}

	public String getInformation() {
		return information;
	}

	public void setInformation(String information) {
		this.information = information;
	}

	public String getDisplay() {
		return display;
	}

	public void setDisplay(String display) {
		this.display = display;
	}

	public String getEdit() {
		return edit;
	}

	public void setEdit(String edit) {
		this.edit = edit;
	}

	public String getRequire() {
		return require;
	}

	public void setRequire(String require) {
		this.require = require;
	}
	
	
	
}
