package com.spay.service.impl.transaction;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spay.dao.merchant.PaymentDAO;
import com.spay.model.merchant.Merchant;
import com.spay.model.transaction.CurrencyCode;
import com.spay.model.transaction.FeesSetting;
import com.spay.model.transaction.PaymentSetup;
import com.spay.model.transaction.ProductForm;
import com.spay.model.transaction.TransationMonitoring;
import com.spay.model.uam.AccountAdjustment;
import com.spay.model.uam.RefundAdjustment;
import com.spay.service.merchant.PaymentService;

@Service("PaymentService")
public class PaymentServiceImpl implements PaymentService {

	@Autowired
	PaymentDAO paymentdao;
	public int savePayment(PaymentSetup payment) {
		int s = paymentdao.savePayment(payment);
		return s;
	}
	
	public List<Merchant> getMerchantDateByID(String merid){
		
		List<Merchant> merlist = null;
		try{
			merlist = paymentdao.getMerchantDateByID(merid);
		}catch(Exception e){
			e.printStackTrace();
		}
		return merlist;
	}
	
	public List<Merchant> getMerchantDateByName(String name){
		List<Merchant> merlist = null;
		try{
			merlist = paymentdao.getMerchantDateByName(name);
		}catch(Exception e){
			e.printStackTrace();
		}
		return merlist;
	}
	
	public List<Merchant> getMerchantDateByEmail(String email){
		List<Merchant> merlist = null;
		try{
			merlist = paymentdao.getMerchantDateByEmail(email);
		}catch(Exception e){
			e.printStackTrace();
		}
		return merlist;
	}
	
	
	public int activeMerchant(long mid){
		int s = paymentdao.activeMerchant(mid);
		return s;
	}
	
	
	public int deleteMerchant(long mid){ 
		int s = paymentdao.deleteMerchant(mid); 
		return s;
	}

	public int deactiveMerchant(long mid, String sdate, String edate) {
		int s = paymentdao.deactiveMerchant(mid,sdate,edate);
		return s;
	}
	
	public List<CurrencyCode> getCurrencyCode(){
		List<CurrencyCode> cclist = null;
		try{
			cclist = paymentdao.getCurrencyCode();
		}catch(Exception e){
			e.printStackTrace();
		}
		return cclist;
	}
	
	public int saveRealTime(TransationMonitoring tm){
		int s = paymentdao.saveRealTime(tm);
		return s;
	}
	
	public List<TransationMonitoring> getTransationMonitoringTDate(
			String merid, String cardtype, String tdate,String count){
		List<TransationMonitoring> tmlist = null;
		try{
			tmlist = paymentdao.getTransationMonitoringTDate(merid,cardtype,tdate,count);
		}catch(Exception e){
			e.printStackTrace();
		}
		return tmlist;
	}
	
	public List<TransationMonitoring> getTransationMonitoringTDate(
			String merid, String tdate){
		List<TransationMonitoring> tmlist = null;
		try{
			tmlist = paymentdao.getTransationMonitoringTDate(merid,tdate);
		}catch(Exception e){
			e.printStackTrace();
		}
		return tmlist;
	}
	
	public List<TransationMonitoring> getTransationMonitoring(String merid,
			String cardtype,String count){
		List<TransationMonitoring> tmlist = null;
		try{
			tmlist = paymentdao.getTransationMonitoring(merid,cardtype,count); 
		}catch(Exception e){
			e.printStackTrace();
		}
		return tmlist;
	}
	
	public List<TransationMonitoring> getTransationMonitoring(String merid){
		List<TransationMonitoring> tmlist = null;
		try{
			tmlist = paymentdao.getTransationMonitoring(merid); 
		}catch(Exception e){
			e.printStackTrace();
		}
		return tmlist;
	}

	public List<TransationMonitoring> getTransationMonitoringRefno(
			String merid, String cardtype, String trefno,String count) {
		List<TransationMonitoring> tmlist = null;
		try{
			tmlist = paymentdao.getTransationMonitoringRefno(merid,cardtype,trefno,count); 
		}catch(Exception e){
			e.printStackTrace();
		}
		return tmlist;
	}
	
	public List<TransationMonitoring> getTransationMonitoringRefno(
			String merid, String trefno) {
		List<TransationMonitoring> tmlist = null;
		try{
			tmlist = paymentdao.getTransationMonitoringRefno(merid,trefno);
		}catch(Exception e){
			e.printStackTrace();
		}
		return tmlist;
	}
	
	public List<TransationMonitoring> getTransationMonitoringCardno(
			String merid, String cardtype, String cnumber,String count){
		
		List<TransationMonitoring> tmlist = null;
		try{
			tmlist = paymentdao.getTransationMonitoringCardno(merid,cardtype,cnumber,count); 
		}catch(Exception e){
			e.printStackTrace();
		}
		return tmlist;
	}
	
	public List<TransationMonitoring> getTransationMonitoringCardno(
			String merid, String cnumber){
		
		List<TransationMonitoring> tmlist = null;
		try{
			tmlist = paymentdao.getTransationMonitoringCardno(merid,cnumber); 
		}catch(Exception e){
			e.printStackTrace();
		}
		return tmlist;
	}
	
	public List<TransationMonitoring> getTransationMonitoringAll(String merid,
			String cardtype, String tdate, String trefno, String cnumber,String count){
		List<TransationMonitoring> tmlist = null;
		try{
			tmlist = paymentdao.getTransationMonitoringAll(merid,cardtype,tdate,trefno,cnumber,count); 
		}catch(Exception e){
			e.printStackTrace();
		}
		return tmlist;
	}
	
	public List<TransationMonitoring> getTransationMonitoringAll(String merid,
			String tdate, String trefno, String cnumber){
		List<TransationMonitoring> tmlist = null;
		try{
			tmlist = paymentdao.getTransationMonitoringAll(merid,tdate,trefno,cnumber); 
		}catch(Exception e){
			e.printStackTrace();
		}
		return tmlist;
	}
	
	public List<TransationMonitoring> getTransationMonitoringValue(String tmid){
		System.out.println("In getTransationMonitoringValue");
		List<TransationMonitoring> tmlist = null;
		try{
			tmlist = paymentdao.getTransationMonitoringValue(tmid); 
		}catch(Exception e){
			e.printStackTrace();
		}
		return tmlist;
	}
	
	public List<CurrencyCode> getCurrencyName(String txncurr){
		List<CurrencyCode> tmlist = null;
		try{
			tmlist = paymentdao.getCurrencyName(txncurr); 
		}catch(Exception e){
			e.printStackTrace();
		}
		return tmlist;
	}
	
	public int saveProductForm(ProductForm productform){
		int s = paymentdao.saveProductForm(productform);
		return s;
	}
	
	public List<ProductForm> getProductForm(String pcode){
		List<ProductForm> tmlist = null;
		try{
			tmlist = paymentdao.getProductForm(pcode); 
		}catch(Exception e){
			e.printStackTrace();
		}
		return tmlist;
	}
	
	public List<ProductForm> getProductForm(){
		List<ProductForm> tmlist = null;
		try{
			tmlist = paymentdao.getProductForm(); 
		}catch(Exception e){
			e.printStackTrace();
		}
		return tmlist;
	}

	public int updateProductForm(ProductForm productform){
		int s = paymentdao.updateProductForm(productform); 
		return s;
	}
	
	public int saveFeesSetting(FeesSetting fees){
		int s = paymentdao.saveFeesSetting(fees); 
		return s;
	}
	
	public List<FeesSetting> getFeesSetting(String pcode){
		List<FeesSetting> tmlist = null;
		try{
			tmlist = paymentdao.getFeesSetting(pcode); 
		}catch(Exception e){
			e.printStackTrace();
		}
		return tmlist;
	}
	
	public List<Merchant> getMerchantDateByval(long id){
		List<Merchant> merlist = null;
		try{
			merlist = paymentdao.getMerchantDateByval(id);
		}catch(Exception e){
			e.printStackTrace();
		}
		return merlist;
	}
	
	public List<TransationMonitoring> getcheckTCode(String tcode){
		List<TransationMonitoring> tval = null;
		try{
			tval = paymentdao.getcheckTCode(tcode);
		}catch(Exception e){
			e.printStackTrace();
		}
		return tval;
	}
	
	public List<TransationMonitoring> checkTraceNumber(String trnum){
		List<TransationMonitoring> tval = null;
		try{
			tval = paymentdao.checkTraceNumber(trnum);
		}catch(Exception e){
			e.printStackTrace();
		}
		return tval;
	}
	
	public int saveAdjustRefund(RefundAdjustment adj){
		int s = paymentdao.saveAdjustRefund(adj); 
		return s;
	}
	
	public int callAccpectandReject(String tid, char status){
		int s = paymentdao.callAccpectandReject(tid,status); 
		return s;
	}
	
	public int saveAccountAdjustment(AccountAdjustment aa){
		int s = paymentdao.saveAccountAdjustment(aa); 
		return s;
	}
	
	public List<ProductForm> getProductForm(int pid){
		List<ProductForm> tmlist = null;
		try{
			tmlist = paymentdao.getProductForm(pid); 
		}catch(Exception e){
			e.printStackTrace();
		}
		return tmlist;
	}
	
	public List<FeesSetting> getFeesSettingValue(String feecode){
		List<FeesSetting> tmlist = null;
		try{
			tmlist = paymentdao.getFeesSettingValue(feecode); 
		}catch(Exception e){
			e.printStackTrace();
		}
		return tmlist;
	}
}
