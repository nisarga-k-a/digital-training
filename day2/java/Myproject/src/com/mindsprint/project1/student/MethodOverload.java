package com.mindsprint.project1.student;

public class MethodOverload {
    public int add(int num1, int num2)
    {
        return num1 + num2;
    }

    public double add(double num1, double num2){
        return num1 + num2;
    }

    public float add(float num1, float num2){
        return num1 + num2;
    }

    public static void main(String[] args){
        MethodOverload m = new MethodOverload();
        System.out.println(m.add(7.8, 9.8));
        System.out.println(m.add(67, 98));

    }





}
