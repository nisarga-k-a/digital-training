package com.mindsprint.project1.student;

import java.util.Scanner;

interface  PayPal{
    public void pay();
}

interface RazorPay{
    public void pay();
}

class Paypal implements PayPal, RazorPay{
    String method;
    void PaymentImpl(String method){
        this.method = method;
    }

    @Override
    public void pay() {
        if (method.equals("Paypal"))
            System.out.println("Payment done using Paypal");
        else if (method.equals("RazorPay"))
            System.out.println("Payment Done using RazorPay");
    }
    }

    class Api2 implements PayPal{


        @Override
        public void pay() {
            System.out.println("Payment done using payment method");

        }
    }

public class Payment {
    public static void main(String[] args){
        Scanner sc = new Scanner(System.in);
        System.out.println("Payment done using Paypal");
        String method = sc.next();
        if (method.equals("RazorPay"))
        {
            RazorPay = new Api2();
        }
    }
}
