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
@Table(name="REAL_TRANSACTION_MONITORING")
public class TransationMonitoring {

	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator="REAL_TRANSACTION_Seq")
	@SequenceGenerator(name="REAL_TRANSACTION_Seq", sequenceName="REAL_TRANSACTION_Seq", allocationSize=1)
	
	@Column(name = "ID")
	private Integer Id;
			
	@Column(name="MERCHANT_ID")
	private String merchantid;
	
	@Column(name="CARD_TYPE")
	private String cardtype;
	
	@Column(name="TXN_DATE")
	private Date txndate;
	
	@Column(name="TXN_REF_NO")
	private String txnrefno;
	
	@Column(name="CARD_NUMBER")
	private Integer cardnumber;
	
	@Column(name="TXN_CODE")
	private Integer txncode;
	
	@Column(name="TRACK_NO")
	private Integer trackno;
	
	@Column(name="TXN_CURRENCY")
	private String txncurrency;
	
	@Column(name="TXN_AMOUNT")
	private Integer txnamount;
	
	@Column(name="TXN_FEES")
	private Integer txnfees;
	
	@Column(name="SETTLE_AMOUNT")
	private Integer settleamount;
	
	@Column(name="SETTLE_CURRENCY")
	private String settlecurrency;
	
	@Column(name="RES_CODE")
	private Integer rescode;
	
	@Column(name="RESP_CODE")
	private Integer respcode;
	
	@Column(name="CHARGEBACK_AUTHORIZE_STATUS")
	private String chargebackauthorizestatus;

	@Column(name="ISCHARGEBACKRAISED")
	private String chargebackrasiedornot;
	
	@Column(name="BIN_NUMBER")
	private Integer binNumber;
	
	

	public Integer getId() {
		return Id;
	}

	public void setId(Integer id) {
		Id = id;
	}

	public String getMerchantid() {
		return merchantid;
	}

	public void setMerchantid(String merchantid) {
		this.merchantid = merchantid;
	}

	public String getCardtype() {
		return cardtype;
	}

	public void setCardtype(String cardtype) {
		this.cardtype = cardtype;
	}

	public Date getTxndate() {
		return txndate;
	}

	public void setTxndate(Date txndate) {
		this.txndate = txndate;
	}

	public String getTxnrefno() {
		return txnrefno;
	}

	public void setTxnrefno(String txnrefno) {
		this.txnrefno = txnrefno;
	}

	public Integer getCardnumber() {
		return cardnumber;
	}

	public void setCardnumber(Integer cardnumber) {
		this.cardnumber = cardnumber;
	}

	public Integer getTxncode() {
		return txncode;
	}

	public void setTxncode(Integer txncode) {
		this.txncode = txncode;
	}

	public Integer getTrackno() {
		return trackno;
	}

	public void setTrackno(Integer trackno) {
		this.trackno = trackno;
	}

	public String getTxncurrency() {
		return txncurrency;
	}

	public void setTxncurrency(String txncurrency) {
		this.txncurrency = txncurrency;
	}

	public Integer getTxnamount() {
		return txnamount;
	}

	public void setTxnamount(Integer txnamount) {
		this.txnamount = txnamount;
	}

	public Integer getTxnfees() {
		return txnfees;
	}

	public void setTxnfees(Integer txnfees) {
		this.txnfees = txnfees;
	}

	public Integer getSettleamount() {
		return settleamount;
	}

	public void setSettleamount(Integer settleamount) {
		this.settleamount = settleamount;
	}

	public String getSettlecurrency() {
		return settlecurrency;
	}

	public void setSettlecurrency(String settlecurrency) {
		this.settlecurrency = settlecurrency;
	}

	public Integer getRescode() {
		return rescode;
	}

	public void setRescode(Integer rescode) {
		this.rescode = rescode;
	}

	public Integer getRespcode() {
		return respcode;
	}

	public void setRespcode(Integer respcode) {
		this.respcode = respcode;
	}

	
	public String getChargebackauthorizestatus() {
		return chargebackauthorizestatus;
	}

	
	public void setChargebackauthorizestatus(String chargebackauthorizestatus) {
		this.chargebackauthorizestatus = chargebackauthorizestatus;
	}
	public String getChargebackrasiedornot() {
		return chargebackrasiedornot;
	}
	
	public void setChargebackrasiedornot(String chargebackrasiedornot) {
		this.chargebackrasiedornot = chargebackrasiedornot;
	}

	public Integer getBinNumber() {
		return binNumber;
	}

	public void setBinNumber(Integer binNumber) {
		this.binNumber = binNumber;
	}
	
	
}
