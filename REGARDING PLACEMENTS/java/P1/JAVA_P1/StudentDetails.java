package JAVA_P1;

import java.util.Scanner;

class Student {
    String USN;
    String name;
    String branch;
    String phone;

    public Student(String USN, String name, String branch, String phone) {
        this.USN = USN;
        this.name = name;
        this.branch = branch;
        this.phone = phone;
    }

    public void displayDetails() {
        System.out.println("USN:" + USN);
        System.out.println("Name:" + name);
        System.out.println("Branch:" + branch);
        System.out.println("Phone:" + phone);
        System.out.println();
    }
}

public class StudentDetails {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter the number of students[n]: ");
        int n = sc.nextInt();
        Student[] students = new Student[n];

        for (int i = 0; i < n; i++) {
            sc.nextLine();
            System.out.println("Enter the details for student" + (i + 1) + ":");

            System.out.print("USN:");
            String USN = sc.nextLine();
            System.out.print("Name:");
            String Name = sc.nextLine();
            System.out.print("Branch:");
            String Branch = sc.nextLine();
            System.out.print("Phone:");
            String Phone = sc.nextLine();

            students[i] = new Student(USN, Name, Branch, Phone);
        }

        System.out.println(" Student Details: ");
        for (int i = 0; i < n; i++) {
            System.out.println("Student" + (i + 1) + "Details: ");
            students[i].displayDetails();
        }
        sc.close();
    }
}
