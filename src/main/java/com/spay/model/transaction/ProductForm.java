package com.spay.model.transaction;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name="PRODUCT_FORM")
public class ProductForm {
	
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator="product_form_Seq")
    @SequenceGenerator(name="product_form_Seq", sequenceName="product_form_Seq", allocationSize=1)
	@Column(name = "ID")
	private Integer Id;
	
	
	@Column(name="product_code")
	private String productcode;
	
	@Column(name="product_category")
	private String procategory;
	
	@Column(name="product_description")
	private String productdesc;
	
	@Column(name = "expiry_period")
	private Integer expiryperiod;

	public Integer getId() {
		return Id;
	}

	public void setId(Integer id) {
		Id = id;
	}

	public String getProductcode() {
		return productcode;
	}

	public void setProductcode(String productcode) {
		this.productcode = productcode;
	}

	public String getProductdesc() {
		return productdesc;
	}

	public void setProductdesc(String productdesc) {
		this.productdesc = productdesc;
	}

	public Integer getExpiryperiod() {
		return expiryperiod;
	}

	public void setExpiryperiod(Integer expiryperiod) {
		this.expiryperiod = expiryperiod;
	}

	public String getProcategory() {
		return procategory;
	}

	public void setProcategory(String procategory) {
		this.procategory = procategory;
	}
	
	

}
