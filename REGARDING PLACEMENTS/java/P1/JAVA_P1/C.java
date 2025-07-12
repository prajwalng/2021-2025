package JAVA_P1;

public class C {
    public void display() {
        System.out.println("Class C - No Inheritance from A");
        A objA = new A();
        System.out.println("publicVarA: " + objA.publicVarA);
        System.out.println("protectedVarA: " + objA.protectedVarA);
        System.out.println("defaultVarA: " + objA.defaultVarA);
    }
}
