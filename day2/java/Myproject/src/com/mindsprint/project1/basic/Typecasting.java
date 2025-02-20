package com.mindsprint.project1.basic;

public class Typecasting {
    public static void main(String[] args) {
        short data = 10;
        float data1 = data;
        System.out.println("Data1:"+data1); //implicit type casting

        double info = 34.45;
        int info1 = (int)info; //explicit type casting
        System.out.println("info:"+info1); //loss of data

        char a = 'A';
        System.out.println("ASCII No:"+ (int)a);
        System.out.println("ASCII No:" + (char) ((int)a+32)); //Converting from A to a


    }
}
