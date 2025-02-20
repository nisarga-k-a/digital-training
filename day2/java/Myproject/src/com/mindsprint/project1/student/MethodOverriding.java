package com.mindsprint.project1.student;

class ParentPhone{
    public void call(){
        System.out.println("print phone is calling");
    }
}
class ChildPhone extends ParentPhone{
    public void call(){
        System.out.println("Child phone is calling");
    }
}
public class MethodOverriding {
    public static void main(String[] args)
    {
        ChildPhone alex = new ChildPhone();
    }
}
