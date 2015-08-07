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
@Table(name="FEES_SETTINGS")
public class FeesSetting {
	
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator="fees_settings_Seq")
    @SequenceGenerator(name="fees_settings_Seq", sequenceName="fees_settings_Seq", allocationSize=1)
	@Column(name = "ID")
	private Integer Id;
	
	
	@Column(name="FEE_CODE")
	private String feecode;
	
	@Column(name="FEE_TYPE")
	private String feetype;
	
	@Column(name="CURRENCY")
	private String currency;
	
	@Column(name="PRODUCT_CODE")
	private String productcode;
	
	@Column(name="CARD_TYPE")
	private String cardtype;
	
	@Column(name = "EFFECTIVE_DATE")
	private Date effectivedate;
	
	@Column(name = "FEE_VALUE")
	private Integer feevalue;

	public Integer getId() {
		return Id;
	}

	public void setId(Integer id) {
		Id = id;
	}

	public String getFeecode() {
		return feecode;
	}

	public void setFeecode(String feecode) {
		this.feecode = feecode;
	}

	public String getFeetype() {
		return feetype;
	}

	public void setFeetype(String feetype) {
		this.feetype = feetype;
	}

	public String getCurrency() {
		return currency;
	}

	public void setCurrency(String currency) {
		this.currency = currency;
	}

	public String getProductcode() {
		return productcode;
	}

	public void setProductcode(String productcode) {
		this.productcode = productcode;
	}

	public String getCardtype() {
		return cardtype;
	}

	public void setCardtype(String cardtype) {
		this.cardtype = cardtype;
	}

	public Date getEffectivedate() {
		return effectivedate;
	}

	public void setEffectivedate(Date effectivedate) {
		this.effectivedate = effectivedate;
	}

	public Integer getFeevalue() {
		return feevalue;
	}

	public void setFeevalue(Integer feevalue) {
		this.feevalue = feevalue;
	}

	
	
	

}
