package javalab;

import java.util.Scanner;

public class pro3 {
    public static void main(String[] args) {
        int a, b;
        Scanner sc = new Scanner(System.in);

        System.out.print("Enter the first number:   ");
        a = sc.nextInt();
        System.out.print("Enter the second number:   ");
        b = sc.nextInt();
        System.out.println("a=" + a);
        System.out.println("b=" + b);

        WithThirdVariable(a, b);
        WithoutThirdVariable(a, b);

        sc.close();
    }

    private static void WithThirdVariable(int a, int b) {
        int temp;
        temp = a;
        a = b;
        b = temp;

        System.out.println("After Swapping---------");
        System.out.println("a=" + a);
        System.out.println("b=" + b);
    }

    private static void WithoutThirdVariable(int a, int b) {
        a = a + b;
        b = a - b;
        a = a - b;
        System.out.println("After Swapping---------");
        System.out.println("a=" + a);
        System.out.println("b=" + b);
    }
}
