package com.spay.service.merchant;

import java.util.List;


import com.spay.model.merchant.Merchant;
import com.spay.model.transaction.CurrencyCode;
import com.spay.model.transaction.FeesSetting;
import com.spay.model.transaction.PaymentSetup;
import com.spay.model.transaction.ProductForm;
import com.spay.model.transaction.TransationMonitoring;
import com.spay.model.uam.AccountAdjustment;
import com.spay.model.uam.RefundAdjustment;

public interface PaymentService {

	public int savePayment(PaymentSetup payment);

	public List<Merchant> getMerchantDateByID(String merid);

	public List<Merchant> getMerchantDateByName(String name);

	public List<Merchant> getMerchantDateByEmail(String email);

	public int activeMerchant(long mid);

	public int deleteMerchant(long mid);

	public int deactiveMerchant(long mid, String sdate, String edate);

	public List<CurrencyCode> getCurrencyCode();

	public int saveRealTime(TransationMonitoring tm);

	public List<TransationMonitoring> getTransationMonitoringTDate(
			String merid, String cardtype, String tdate,String count);
	
	public List<TransationMonitoring> getTransationMonitoringTDate(
			String merid,String tdate);

	public List<TransationMonitoring> getTransationMonitoring(String merid,
			String cardtype,String count);
	
	public List<TransationMonitoring> getTransationMonitoring(String merid);

	public List<TransationMonitoring> getTransationMonitoringRefno(
			String merid, String cardtype, String trefno,String count);
	
	public List<TransationMonitoring> getTransationMonitoringRefno(
			String merid, String trefno);

	public List<TransationMonitoring> getTransationMonitoringCardno(
			String merid, String cardtype, String cnumber,String count);
	
	public List<TransationMonitoring> getTransationMonitoringCardno(
			String merid, String cnumber);

	public List<TransationMonitoring> getTransationMonitoringAll(String merid,
			String cardtype, String tdate, String trefno, String cnumber,String count);
	
	public List<TransationMonitoring> getTransationMonitoringAll(String merid,
			 String tdate, String trefno, String cnumber);

	public List<TransationMonitoring> getTransationMonitoringValue(String tmid);

	public List<CurrencyCode> getCurrencyName(String txncurr);

	public int saveProductForm(ProductForm productform);

	public List<ProductForm> getProductForm(String pcode);
	public List<ProductForm> getProductForm();

	public int updateProductForm(ProductForm productform);

	public int saveFeesSetting(FeesSetting fees);

	public List<FeesSetting> getFeesSetting(String pcode);

	public List<Merchant> getMerchantDateByval(long id);

	public List<TransationMonitoring> getcheckTCode(String tcode);

	public List<TransationMonitoring> checkTraceNumber(String trnum);

	public int saveAdjustRefund(RefundAdjustment adj);

	public int callAccpectandReject(String tid, char c);

	public int saveAccountAdjustment(AccountAdjustment aa);

	public List<ProductForm> getProductForm(int pid);

	public List<FeesSetting> getFeesSettingValue(String feecode);     
     

}
