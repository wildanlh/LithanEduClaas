package com.lithan.assignmentone;

public class CreditCardProcessor implements PaymentProcessor {
	public boolean process() {
		System.out.println("Payment by Credit Card is being processed...");
		return true;
	}
}
