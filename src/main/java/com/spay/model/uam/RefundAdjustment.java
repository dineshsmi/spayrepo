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
@Table(name="REFUND_ADJUSTMENT")
public class RefundAdjustment {

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator="refund_adjust_Seq")
    @SequenceGenerator(name="refund_adjust_Seq", sequenceName="refund_adjust_Seq", allocationSize=1)
	@Column(name = "ID")
	private Integer Id;
	
	@Column(name="MERCHANT_ID")
	private String merchantid;
		
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
	
	@Column(name="RESP_CODE")
	private Integer respcode;
	
	@Column(name="CHARGEBACK_STATUS")
	private String chargebackstatus;
	
	@Column(name="REFUND_AMOUNT")
	private Integer refundamount;
	
	@Column(name="MERCHENT_AMOUNT_TYPE")
	private String merchentamounttype;
	

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

	public Integer getRespcode() {
		return respcode;
	}

	public void setRespcode(Integer respcode) {
		this.respcode = respcode;
	}

	public String getChargebackstatus() {
		return chargebackstatus;
	}

	public void setChargebackstatus(String chargebackstatus) {
		this.chargebackstatus = chargebackstatus;
	}

	public Integer getRefundamount() {
		return refundamount;
	}

	public void setRefundamount(Integer refundamount) {
		this.refundamount = refundamount;
	}

	public String getMerchentamounttype() {
		return merchentamounttype;
	}

	public void setMerchentamounttype(String merchentamounttype) {
		this.merchentamounttype = merchentamounttype;
	}
	
	
}
