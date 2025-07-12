package javalab;

import java.util.Scanner;

public class pro4 {
    public static void main(String[] args) {
        double a, b, c, D, r, r1, r2;
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter the first number: ");
        a = sc.nextDouble();
        System.out.print("Enter the second number: ");
        b = sc.nextDouble();
        System.out.print("Enter the third number: ");
        c = sc.nextDouble();
        System.out.println("a=" + a);
        System.out.println("b=" + b);
        System.out.println("c=" + c);

        D = b * b - 4 * a * c;

        if (D > 0) {
            r1 = (-b + Math.sqrt(D)) / (2 * a);
            r2 = (-b - Math.sqrt(D)) / (2 * a);
            System.out.println("Two real solutions.");
            System.out.println("r1=" + r1);
            System.out.println("r2=" + r2);
        } else if (D == 0) {
            r = -b / (2 * a);
            System.out.println("One real solutions.");
            System.out.println("r=" + r);
        } else {
            System.out.println("No real solution. The discriminannt is negative.");
        }
        sc.close();
    }

}
