package com.lithan.assignmentone;

import java.util.Scanner;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class App {
    public static void main( String[] args ) {
    	ApplicationContext context = new ClassPathXmlApplicationContext("config.xml");
        
        Scanner scan = new Scanner(System.in);
        System.out.println("Select the payment you want to use :");
        System.out.println("1. Google Pay");
        System.out.println("2. Credit Card");
        int mode = scan.nextInt();
        
        String paymentMethod = "";
        boolean paymentSuccess = false;
        BillingService billService = null;
        
        if (mode == 1) {
        	billService = (BillingService) context.getBean("gpay-service");
        	paymentMethod = "Google Pay";
        	paymentSuccess = billService.completePayment();
        } else if (mode == 2) {
        	billService = (BillingService) context.getBean("credit-card-service");
        	paymentMethod = "Credit Card";
        	paymentSuccess = billService.completePayment();
		} else {
			System.out.println("Choose payment 1 or 2");
		}
        
        if (paymentSuccess) {
        	System.out.println("Payment successfully use " + paymentMethod);
        }
    }
}
