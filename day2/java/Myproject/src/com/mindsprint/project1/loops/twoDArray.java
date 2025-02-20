package com.mindsprint.project1.loops;

public class twoDArray {
    public static void main(String[] args) {
        int [][] array = {{1, 2, 3}, {4, 5, 6}};
        for (int i = 0;i < array.length; i++)
        {
            for (int j = 0; j <  array[i][j]; j++)
            {
                System.out.println(array[i][j]+"\t");
            }
            System.out.println();
        }
        System.out.println("Access using for each");
        for (int[] arr:array){
            for (int num:arr){
                System.out.println(num+ "\t");
            }
        }
    }
}
