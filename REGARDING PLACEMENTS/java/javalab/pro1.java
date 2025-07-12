package javalab;

import java.util.Scanner;

public class pro1 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter the first number");
        int a = sc.nextInt();
        System.out.print("Enter the second number");
        int b = sc.nextInt();

        int sum = a + b;
        int prod = a * b;
        int diff = a - b;

        System.out.print("sum=" + sum);
        System.out.print("prod=" + prod);
        System.out.print("diff=" + diff);

        sc.close();
    }
}