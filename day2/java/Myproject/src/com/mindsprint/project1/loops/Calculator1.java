package com.mindsprint.project1.loops;

public class Calculator1 {
        public int add(int a, int b) {
            return a + b;
        }

        public int sub(int a, int b) {
            return a - b;
        }

        public int mul(int a, int b) {
            return a * b;
        }

        public int div(int a, int b) {
            return a / b;
        }

        public int square(int n) {
            return n * n;
        }

        public int cube(int n) {
            return n * n * n;
        }

        public static void main(String[] args) {
            Calculator1 c = new Calculator1();
            System.out.println("Add: " + c.add(45, 23));
            int res = c.cube(3);
            System.out.println("Cube of 3 is " + res);
        }
    }
