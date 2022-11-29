package com.lithan.assignmentone;

public class GooglePayProcessor implements PaymentProcessor {
	public boolean process() {
		System.out.println("Payment by Google Pay is being processed...");
		return true;
	}
}
