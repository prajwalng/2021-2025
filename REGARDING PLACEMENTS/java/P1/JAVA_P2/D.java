package JAVA_P2;

import JAVA_P1.A;

public class D extends A {
    public void display() {
        System.out.println("Class D - Inheritance from A in JAVA_P1");
        System.out.println("publicVarA: " + publicVarA);
        System.out.println("protectedVarA: " + protectedVarA);
    }
}
