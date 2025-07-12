package JAVA_P2;

import JAVA_P1.A;

public class E {
    public void display() {
        System.out.println("Class E - No Inheritance from A in JAVA_P1");
        A objA = new A();
        System.out.println("publicVarA: " + objA.publicVarA);
    }
}
