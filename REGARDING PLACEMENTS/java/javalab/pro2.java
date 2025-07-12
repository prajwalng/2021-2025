package javalab;

import java.util.Scanner;

public class pro2 {
    public static void main(String[] args) {

        double n, P, R, T, si, ci;
        Scanner sc = new Scanner(System.in);

        System.out.print("Enter the principle amount:  ");
        P = sc.nextDouble();

        System.out.print("Enter the interest rate:  ");
        R = sc.nextDouble();

        System.out.print("Enter the time period:  ");
        T = sc.nextDouble();

        System.out.print("Enter the number of times the interest is compounded per year:  ");
        n = sc.nextDouble();

        si = (P * R * T) / 100;

        ci = P * Math.pow(1 + (R / (100 * n)), n * T) - P;

        System.out.println("si=" + si);
        System.out.println("ci=" + ci);

        sc.close();

    }

}
