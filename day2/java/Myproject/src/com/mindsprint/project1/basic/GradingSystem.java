package com.mindsprint.project1.basic;

import java.util.Scanner;

public class GradingSystem {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter any number:");

        int percentage = sc.nextInt();

        if (percentage >= 70 && percentage <= 100)
            System.out.println("Wow congratulations distinction!!");
        else if (percentage >= 60 && percentage <= 70)
            System.out.println("First class");
        else if (percentage >= 50 && percentage <= 60)
            System.out.println("Second class");
        else if (percentage >= 40 && percentage <= 50)
                System.out.println("third class");
        else
            System.out.println("Enter the correct percentage");
    }
}


