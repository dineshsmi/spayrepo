package com.spay.model.otpmessage;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;


@Entity
@Table(name="otpmessagedetails")
public class OTPMessage {
	
	
	private static final long serialVersionUID = 1L;

	
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator="otpmessage_Seq")
    @SequenceGenerator(name="otpmessage_Seq", sequenceName="otpmessage_Seq", allocationSize=1)
	@Column(name = "ID")
	private Integer Id;
	
	
	/*@Column(name="merchant_Id")
	private String merchantId;*/
	
	@Column(name="otp_message")
	private String otpmessage;
	
	
	/*@Column(name="merchant_name")
	private String merchantname;*/
	
	
	@Column(name="otp_number")
	private Integer otpnumber;
	
	
	@Column(name="otp_effective_date")
	private Date otpeffectivedate;
	
	
	@Column(name="otp_expiry_period")
	private String otpexpiryperiod;
	
	
	@Column(name="otp_expiry_effectivedate")
	private Date otpexpiryeffectivedate;


	public Integer getId() {
		return Id;
	}


	public void setId(Integer id) {
		Id = id;
	}


	/*public String getMerchantId() {
		return merchantId;
	}


	public void setMerchantId(String merchantId) {
		this.merchantId = merchantId;
	}*/

    public String getOtpmessage() {
		return otpmessage;
	}


	public void setOtpmessage(String otpmessage) {
		this.otpmessage = otpmessage;
	}


	/*public String getMerchantname() {
		return merchantname;
	}


	public void setMerchantname(String merchantname) {
		this.merchantname = merchantname;
	}*/


	public Integer getOtpnumber() {
		return otpnumber;
	}


	public void setOtpnumber(Integer otpnumber) {
		this.otpnumber = otpnumber;
	}


	public Date getOtpeffectivedate() {
		return otpeffectivedate;
	}


	public void setOtpeffectivedate(Date otpeffectivedate) {
		this.otpeffectivedate = otpeffectivedate;
	}


	public String getOtpexpiryperiod() {
		return otpexpiryperiod;
	}


	public void setOtpexpiryperiod(String otpexpiryperiod) {
		this.otpexpiryperiod = otpexpiryperiod;
	}


	public Date getOtpexpiryeffectivedate() {
		return otpexpiryeffectivedate;
	}


	public void setOtpexpiryeffectivedate(Date otpexpiryeffectivedate) {
		this.otpexpiryeffectivedate = otpexpiryeffectivedate;
	}
	
	

}
