package com.spay.service.otpmessage;

import com.spay.model.otpmessage.OTPMessage;

public interface OTPMessageService {

	void saveOTPMessageTemplate(OTPMessage otpMessage);

	boolean updateOTPexpiryperiod(OTPMessage otpmessageObj);


}

