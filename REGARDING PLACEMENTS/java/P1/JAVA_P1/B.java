package JAVA_P1;

public class B extends A {
    public void display() {
        System.out.println("Class B - Inherited from A");
        System.out.println("publicVarA: " + publicVarA);
        System.out.println("protectedVarA: " + protectedVarA);
        System.out.println("defaultVarA: " + defaultVarA);
    }
}