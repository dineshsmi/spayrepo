package com.spay.model.uam;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name="ACCOUNT_ADJUSTMENT")
public class AccountAdjustment {

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator="acc_adj_Seq")
    @SequenceGenerator(name="acc_adj_Seq", sequenceName="acc_adj_Seq", allocationSize=1)
	@Column(name = "ID")
	private Integer Id;
	
	@Column(name="DEBIT_ACCOUNT")
	private String debitaccount;
	
	@Column(name="CREDIT_ACCOUNT")
	private String creditaccount;
	
	@Column(name="CURRENCY")
	private String currency;
	
	@Column(name="REASON")
	private String reason;
	
	@Column(name="ADJUSTMENT_AMOUNT")
	private int adjustamount;
	
	public Integer getId() {
		return Id;
	}

	public void setId(Integer id) {
		Id = id;
	}

	public String getDebitaccount() {
		return debitaccount;
	}

	public void setDebitaccount(String debitaccount) {
		this.debitaccount = debitaccount;
	}

	public String getCreditaccount() {
		return creditaccount;
	}

	public void setCreditaccount(String creditaccount) {
		this.creditaccount = creditaccount;
	}

	public String getCurrency() {
		return currency;
	}

	public void setCurrency(String currency) {
		this.currency = currency;
	}

	public String getReason() {
		return reason;
	}

	public void setReason(String reason) {
		this.reason = reason;
	}

	public int getAdjustamount() {
		return adjustamount;
	}

	public void setAdjustamount(int adjustamount) {
		this.adjustamount = adjustamount;
	}
	
	
}
