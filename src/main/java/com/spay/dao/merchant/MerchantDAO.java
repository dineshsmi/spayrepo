package com.spay.dao.merchant;

import java.util.Date;
import java.util.List;

import com.spay.model.merchant.Admin;
import com.spay.model.merchant.BranchCode;
import com.spay.model.merchant.DepartmentDesignation;
import com.spay.model.merchant.Merchant;
import com.spay.model.merchant.Securitytable;
import com.spay.model.transaction.CurrencyCode;
import com.spay.model.transaction.PaymentSetup;
import com.spay.model.transaction.TransationMonitoring;
import com.spay.model.uam.AuditTrial;
import com.spay.model.uam.UserRegistration;

public interface MerchantDAO {

	void addNewMerchant(Merchant merchant);

	Merchant activateMerchantById(Merchant merchantid);

	boolean authenticateCredentails(String merchantId, String username,
			String md5password);

	boolean merchantIdExistCheck(String merchantId);

	boolean updateChangedPwd(String merchantId, String confirmedPwd);

	Merchant getMerchantByMerchantId(String merchantId);

	public List<Merchant> getMerchantdetails(String id);

	void updatemodifydetails(Merchant merchant);
	
	List<Admin> admindetails(String adminid);

	public List<Merchant> getMerchantdetails();
	
	public List<TransationMonitoring> getDailyReport(String d23,String strTrxnStatus);

	List<TransationMonitoring> getMonthlyReport(String strDate,
			String strTransactionstatus);

	List<TransationMonitoring> showTxnStatement(String strmerchantId);

	List<UserRegistration> showUserModification(String strEmployeeId,
			String strUserName, String strEmailId);

	boolean updateUserDetails(String strPkId,String strEmpId,
			String strUsername, String strBranchcode, String strEmailId,
			String strDesignation, String strTel, String strMobile,
			String strDept, String strFinalDate, String strAddress, String strCountry);

    

	void updateautopassword(String hdnmerchantId,String decryptedPwd);

	public List<Admin> checkAdminDetails(String username, String password);

	public int saveAudit(AuditTrial audit);  
	
    void updateadminpassword(String adminid,String decryptedPwd);
	
	void updateadminreset(String adminid,String newpassword);
	
	public List<Securitytable> getSecurityques();
	
	public List<Securitytable> securitydetails(String securityquestion);
	
	public List<Admin> getdetailsusingmailid(String mailid);
	
    void updatepwd1(String adminid,String newpassword);
	 
	void updatepwd2(String adminid,String newpassword);

	List<TransationMonitoring> showTxnstatementresult(String strMerchantId,
				String strTrnDate, String strCardNo, String strTrnRefNo);

	public long saveBranchCode(BranchCode bc);

	public long saveDepartDes(DepartmentDesignation dd);

	public List<UserRegistration> loadUsername(String empid);   
}
