package com.spay.dao.otpmessage;

import com.spay.model.otpmessage.OTPMessage;

public interface OTPMessageDAO {

	void addNewOTPMessageTemplate(OTPMessage OTPmessage);

	boolean updateOTPexpiryperiod(OTPMessage otpmessageObj);

	

	

}
