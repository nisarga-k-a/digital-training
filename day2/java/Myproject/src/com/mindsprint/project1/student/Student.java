package com.mindsprint.project1.student;

public class Student {
    String name;
    int[] grade;

    // A constructor that initializes the students name and grade
    public Student(String name, int[] grade)
    {
        this.name = name;
        this.grade = grade;
    }

    public double CalculateAverage(){
        int sum = 0;
        for (int grade1 : grade){
            sum += grade1;
        }
        return (double)sum / grade.length;

    }


    public void displayInfo()
    {
        System.out.println("Name:" +name);
        System.out.println("Grade" +grade);

    }

    public static void main()
    {
        int[] grades = {85, 90, 78, 92, 88};
        Student student = new Student("John Doe", grades);
        Student.main();
    }

}
