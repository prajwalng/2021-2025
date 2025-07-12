package JAVA_P1;

import java.util.Scanner;

class Staff {
    protected int staffId;
    protected String name;
    protected String phone;
    protected double salary;

    public Staff(int staffId, String name, String phone, double salary) {
        this.staffId = staffId;
        this.name = name;
        this.phone = phone;
        this.salary = salary;
    }

    public void displayDetails() {
        System.out.println("StaffID: " + staffId);
        System.out.println("Name: " + name);
        System.out.println("Phone: " + phone);
        System.out.println("Salary: " + salary);
    }
}

class Teaching extends Staff {
    private String domain;
    private String publications;

    public Teaching(int staffId, String name, String phone, double salary, String domain, String publications) {
        super(staffId, name, phone, salary);
        this.domain = domain;
        this.publications = publications;
    }

    public void displayDetails() {
        super.displayDetails();
        System.out.println("Domain: " + domain);
        System.out.println("Publications: " + publications);
    }
}

class Technical extends Staff {
    private String skills;

    public Technical(int staffId, String name, String phone, double salary, String skills) {
        super(staffId, name, phone, salary);
        this.skills = skills;
    }

    public void displayDetails() {
        super.displayDetails();
        System.out.println("Skills: " + skills);
    }
}

class Contract extends Staff {
    private int period;

    public Contract(int staffId, String name, String phone, double salary, int period) {
        super(staffId, name, phone, salary);
        this.period = period;
    }

    public void displayDetails() {
        super.displayDetails();
        System.out.println("Period: " + period);
    }
}

public class StaffDetails {
    public static void main(String[] args) {
        Teaching teachingStaff = new Teaching(101, "John Doe", "1234567890", 60000, "Computer Science", "5");
        System.out.println("Teaching Staff Details");
        teachingStaff.displayDetails();

        Technical technicalStaff = new Technical(201, "Smith Joel", "9874563210", 50000, "Java,Python");
        System.out.println("\n Technical Staff Details");
        technicalStaff.displayDetails();

        Contract contractStaff = new Contract(301, "Joel martin", "2546817930", 40000, 6);
        System.out.println("\n Contract Staff Details");
        contractStaff.displayDetails();

        // sc.close();
    }
}
