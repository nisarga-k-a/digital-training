package com.mindsprint.project1.loops;

public class ForLoop {
    public static void main(String[] args) {

        for (int i = 1; i <= 10; i++) {
            System.out.println(i + " ");
        }

        System.out.println("While loop");
        int i = 1;

        while (i <= 10) {
            System.out.println(i + " ");
            i++;
        }
        System.out.println(i);
        System.out.println("Do while loop");

        do {
            System.out.println(i + ",");

        }while(i <= 10);

    }
}
