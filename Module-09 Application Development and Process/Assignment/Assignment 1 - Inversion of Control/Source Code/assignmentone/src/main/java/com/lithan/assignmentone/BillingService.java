package com.lithan.assignmentone;

public class BillingService {
	private PaymentProcessor paymentProcessor;
	
	public boolean completePayment() {
		return paymentProcessor.process();
	}
	
	public void setPaymentProcessor(PaymentProcessor paymentProcessor) {
		this.paymentProcessor = paymentProcessor;
	}
}
