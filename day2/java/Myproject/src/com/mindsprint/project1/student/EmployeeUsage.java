package com.mindsprint.project1.student;

public class EmployeeUsage {
    public static void main(String[] args)
    {
        Employee e1 = new Employee(1,13443, "john Doe");
        System.out.println(e1);
        Employee e2 = new Employee();
        e2.setId(1001);
        e2.setName("Test User");
        e2.getSalary(787999);
        System.out.println("Id:" +e2.getId()+ "Name:" + e2.getName() + "Salary:" + e2.getSalary(787999));
    }
}
