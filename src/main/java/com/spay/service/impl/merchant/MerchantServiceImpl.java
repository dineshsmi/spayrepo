package com.spay.service.impl.merchant;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spay.dao.merchant.MerchantDAO;
import com.spay.model.merchant.Admin;
import com.spay.model.merchant.BranchCode;
import com.spay.model.merchant.DepartmentDesignation;
import com.spay.model.merchant.Merchant;
import com.spay.model.merchant.Securitytable;
import com.spay.model.transaction.CurrencyCode;
import com.spay.model.transaction.TransationMonitoring;
import com.spay.model.uam.AuditTrial;
import com.spay.model.uam.UserRegistration;
import com.spay.service.merchant.MerchantService;


@Service("merchantService")
@Transactional
public class MerchantServiceImpl implements MerchantService{
	
	@Autowired
	MerchantDAO merchantdao;

	public void addNewMerchant(Merchant merchant) {
		// TODO Auto-generated method stub
		 merchantdao.addNewMerchant(merchant);
	}

	public Merchant activateMerchantById(Merchant merchant) {
		// TODO Auto-generated method stub
		return merchantdao.activateMerchantById(merchant);
	}

	public boolean authenticateCredentails(String merchantId, String username,
			String password) {
		// TODO Auto-generated method stub
		return merchantdao.authenticateCredentails(merchantId,username,password);
	}

	public boolean merchantIdExistCheck(String merchantId) {
		// TODO Auto-generated method stub
		return merchantdao.merchantIdExistCheck(merchantId);
	}

	public boolean updateChangedPwd(String merchantId, String confirmedPwd) {
		// TODO Auto-generated method stub
		return merchantdao.updateChangedPwd(merchantId,confirmedPwd);
	}

	public Merchant getMerchantByMerchantId(String merchantId) {
		// TODO Auto-generated method stub
		return merchantdao.getMerchantByMerchantId(merchantId);
	}

	public List<Merchant> getMerchantdetails(String id) {
		// TODO Auto-generated method stub
		return merchantdao.getMerchantdetails(id);
	}

	public List<Merchant> getMerchantdetails(){
		
		return merchantdao.getMerchantdetails();
	}

	
	public List<TransationMonitoring> getDailyReport(String d23,String strTransactionStatus) {
		// TODO Auto-generated method stub
 		return  merchantdao.getDailyReport(d23,strTransactionStatus); 
		
	}

	
	public List<TransationMonitoring> getMonthlyReport(String strDate,
			String strTransactionstatus) {
		// TODO Auto-generated method stub
		return  merchantdao.getMonthlyReport(strDate,strTransactionstatus);
	}

	
	public List<TransationMonitoring> showTxnStatement(String strmerchantId) {
		// TODO Auto-generated method stub
		return  merchantdao.showTxnStatement(strmerchantId);
	}
	
	
	public void updatemodifydetails(Merchant merchant) {
		// TODO Auto-generated method stub
		 merchantdao.updatemodifydetails(merchant);
	}

	public List<Admin> admindetails(String adminid) {
		// TODO Auto-generated method stub
		return merchantdao.admindetails(adminid);
	}
	
	public List<Admin> checkAdminDetails(String username, String password){
		return merchantdao.checkAdminDetails(username,password);
	}
	
	public int saveAudit(AuditTrial audit){
		return merchantdao.saveAudit(audit);
	}
	
	public long saveBranchCode(BranchCode bc){
		return merchantdao.saveBranchCode(bc);
	}
	
	public long saveDepartDes(DepartmentDesignation dd){
		return merchantdao.saveDepartDes(dd);
	}
	
	public List<UserRegistration> loadUsername(String empid){
		return merchantdao.loadUsername(empid);
	}

	
	public List<UserRegistration> showUserModification(String strEmployeeId,
			String strUserName, String strEmailId) {
		// TODO Auto-generated method stub
		return merchantdao.showUserModification(strEmployeeId,strUserName,strEmailId);
	}

	
	public boolean updateUserDetails(String strPkId,String strEmpId,
			String strUsername, String strBranchcode, String strEmailId,
			String strDesignation, String strTel, String strMobile,
			String strDept, String strFinalDate, String strAddress, String strCountry) {
		// TODO Auto-generated method stub
		return merchantdao.updateUserDetails(strPkId,strEmpId,strUsername,strBranchcode,strEmailId,strDesignation,strTel,strMobile,strDept,strFinalDate,strAddress,strCountry);
	}
	
	public void updateautopassword(String hdnmerchantId,String decryptedPwd) {
		// TODO Auto-generated method stub
		 merchantdao.updateautopassword(hdnmerchantId,decryptedPwd);
	}
	public void updateadminpassword(String adminid,String decryptedPwd) {
		// TODO Auto-generated method stub
		 merchantdao.updateadminpassword(adminid,decryptedPwd);
	}
	
	public void updateadminreset(String adminid,String newpassword) {
		// TODO Auto-generated method stub
		 merchantdao.updateadminreset(adminid,newpassword);
	}
	public List<Securitytable> getSecurityques(){
		List<Securitytable> securlist = null;
		try{
			securlist = merchantdao.getSecurityques();
		}catch(Exception e){
			e.printStackTrace();
		}
		return securlist;
	}
	public List<Securitytable> securitydetails(String securityquestion){
		List<Securitytable> questiondetail = null;
		try{
			questiondetail = merchantdao.securitydetails(securityquestion);
		}catch(Exception e){
			e.printStackTrace();
		}
		return questiondetail;
	}
	public List<Admin> getdetailsusingmailid(String mailid){
		List<Admin> admindetails = null;
		try{
			admindetails = merchantdao.getdetailsusingmailid(mailid);
		}catch(Exception e){
			e.printStackTrace();
		}
		return admindetails;
	}
	public void updatepwd1(String adminid,String newpassword) {
		// TODO Auto-generated method stub
		 merchantdao.updatepwd1(adminid,newpassword);
	}
	public void updatepwd2(String adminid,String newpassword) {
		// TODO Auto-generated method stub
		 merchantdao.updatepwd2(adminid,newpassword);
	}

	@Override
	public List<TransationMonitoring> showTxnstatementresult(
			String strMerchantId, String strTrnDate, String strCardNo,
			String strTrnRefNo) {
		// TODO Auto-generated method stub
		return merchantdao.showTxnstatementresult(strMerchantId,strTrnDate,strCardNo,strTrnRefNo);
	}

	
}
