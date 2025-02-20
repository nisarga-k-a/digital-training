package com.mindsprint.project1.loops;

public class ArrayDemo1 {
    public static void main(String[] args) {
        int array[] = new int[5];
        String[] names = {"test1", "test2", "test3"};

        System.out.println(names[0]);
        for (int i = 0; i < array.length; i++)
        {
            System.out.println(names[i]);
            //use for each loop
        for (String name:names)
            System.out.println(name);
        }
    }
}
