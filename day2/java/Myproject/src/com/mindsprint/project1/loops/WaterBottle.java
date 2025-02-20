package com.mindsprint.project1.loops;

public class WaterBottle {
        int capacity;
        String colour;
        String brand;

        public void setData(int capacity, String colour, String brand){
            this.capacity = capacity;
            this.colour = colour;
            this.brand = brand;

        }

        public void display()
        {
            System.out.println("-------------------------");
            System.out.println("Brand" +brand);
            System.out.println("Capacity" +capacity+ "ltr");
        }

        public static void main(String[] args){
            WaterBottle b1 = new WaterBottle();
            b1.setData(1,"Purple","Milton");
        }


}
