package JAVA_P1;

import java.util.Scanner;

class cnst {
    int i, j;

    cnst() {
        i = 10;
        j = 20;
    }

    cnst(int i, int j) {
        this.i = i;
        this.j = j;
    }

    cnst(int x) {
        i = x;
        j = 20;
    }

    void sum() {
        int sum = i + j;
        System.out.println("Numbers are " + i + " and " + j + " \n Sum is:" + sum);
    }

    void sum(int x) {
        int sum = x + i;
        System.out.println("Numbers are " + i + " and " + x + " \n Sum is: " + sum);
    }

    void sum(int x, int y) {
        int sum = x + y;
        System.out.println("Numbers are " + x + " and " + y + " \n Sum is: " + sum);
    }
}

public class moco {
    public static void main(String[] args) {
        cnst ob = new cnst();
        cnst ob1 = new cnst(20, 30);
        cnst ob2 = new cnst(50);

        ob.sum();
        ob2.sum(50);
        ob1.sum(20, 30);
    }

}
