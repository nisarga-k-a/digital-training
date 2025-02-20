package com.mindsprint.project1.student;

class Base{
    int num;
    Base(int num){
        this.num = num;
    }
}
class Derived extends Base{
    Derived(int i) {
        super(10);
    }
}
public class TestSuper {
    public static void main(String[] args)
    {
        Derived d = new Derived(89);
        System.out.println(d.num);
    }
}
