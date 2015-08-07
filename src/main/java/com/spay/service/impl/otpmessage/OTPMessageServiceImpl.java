package com.spay.service.impl.otpmessage;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spay.dao.otpmessage.OTPMessageDAO;
import com.spay.model.otpmessage.OTPMessage;
import com.spay.service.otpmessage.OTPMessageService;


@Service("otpmessageService")//otpmessageService
@Transactional
public class OTPMessageServiceImpl implements OTPMessageService{
	
	@Autowired
	OTPMessageDAO otpmessagedao;

	public void saveOTPMessageTemplate(OTPMessage otpMessage) {
		// TODO Auto-generated method stub
		
		otpmessagedao.addNewOTPMessageTemplate(otpMessage);
	}

	public boolean updateOTPexpiryperiod(OTPMessage otpmessageObj) {
		// TODO Auto-generated method stub
		return otpmessagedao.updateOTPexpiryperiod(otpmessageObj);
	}

	

	

}
