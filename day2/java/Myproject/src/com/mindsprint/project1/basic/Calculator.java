package com.mindsprint.project1.basic;

import java.util.Scanner;

public class Calculator {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.println("Enter first number");
        int num1 = scanner.nextInt();

        System.out.println("Enter second number");
        int num2 = scanner.nextInt();

        System.out.println("Enter + for Addition \n - Substraction\n" + "* for multiplication \n / for the division");

        String input = scanner.next();

        switch (input){
            case "+":
                System.out.println("Number added" +(num1 + num2));
                break;
            case "-":
                System.out.println("Number added" +(num1 - num2));
                break;
            case "*":
                System.out.println("Number added" +(num1 * num2));
                break;
            case "/":
                System.out.println("Number added" +(num1 / num2));
                break;
        }
    }
}
