package com.spay.model.transaction;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name="CURRENCY_CODE")
public class CurrencyCode {

	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator="currency_code_Seq")
    @SequenceGenerator(name="currency_code_Seq", sequenceName="currency_code_Seq", allocationSize=1)
	@Column(name = "ID")
	private Integer Id;
			
	@Column(name="COUNTRY")
	private String country;
	
	@Column(name="CURRENCY_NAME")
	private String currencyname;
	
	@Column(name="CURRENCY_CODE")
	private String currencycode;

	public Integer getId() {
		return Id;
	}

	public void setId(Integer id) {
		Id = id;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getCurrencyname() {
		return currencyname;
	}

	public void setCurrencyname(String currencyname) {
		this.currencyname = currencyname;
	}

	public String getCurrencycode() {
		return currencycode;
	}

	public void setCurrencycode(String currencycode) {
		this.currencycode = currencycode;
	}
	
	
}
