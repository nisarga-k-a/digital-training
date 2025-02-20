package com.mindsprint.project1.basic;

import java.util.Scanner;

public class SellingPrice {
    public static void main(String[] args) {


        Scanner scanner = new Scanner(System.in);
        System.out.println("Enter selling price");
        int sp = scanner.nextInt();

        System.out.println("Enter the cost price");
        int cp = scanner.nextInt();

        String result = (sp >= cp) ? "profit "+(sp-cp) : "Loss: "+(cp-sp);

        System.out.println(result);
    }
}