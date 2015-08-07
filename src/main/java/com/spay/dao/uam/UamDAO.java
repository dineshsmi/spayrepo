package com.spay.dao.uam;

import java.util.List;

import com.spay.model.merchant.Admin;
import com.spay.model.merchant.BranchCode;
import com.spay.model.merchant.DepartmentDesignation;
import com.spay.model.uam.AssignRights;
import com.spay.model.uam.AuditTrial;
import com.spay.model.uam.UserRegistration;

public interface UamDAO {

	public int savePermission(AssignRights ar);

	public int saveRegistration(UserRegistration ur);

	public List<UserRegistration> checkEmpId(String empid);

	public List<Admin> getAdminDetails();

	public List<AuditTrial> searchUserAudit(String uname, String fdate,
			String tdate);
	
	public List<BranchCode> getBranchCode();

	public List<DepartmentDesignation> getDDvalue();   


	public List<UserRegistration> getEmailIdbyEmpId(String empId); 

}
