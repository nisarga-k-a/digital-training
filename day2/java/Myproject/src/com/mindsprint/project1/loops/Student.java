package com.mindsprint.project1.loops;

public class Student extends Object {
    int id;
    String name;
    String email;
    String address;


    public Student(){}
    public Student(String email, String name, String address) {
//        this((int) Math.round(Math.random()*10000),name, email,address);

        this.name = name;
        this.email = email;
        this.address = address; //normal method

    }

    public Student(int id, String name, String email, String address) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.address = address;
    }

    @Override
    public String toString() {
        return "Student{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", email='" + email + '\'' +
                ", address='" + address + '\'' +
                '}';
    }

    public static void main(String[] args){
        Student s1 = new Student();
        Student s2 = new Student("Alex", "Alex@gmail.com", "US");
        Student s3 = new Student(10011, "Bobby", "Bob@gmail.com", "UK");

        System.out.println(s1);
        System.out.println(s2);
        System.out.println(s3);

    }

}
