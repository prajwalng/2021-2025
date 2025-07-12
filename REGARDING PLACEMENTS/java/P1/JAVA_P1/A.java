package JAVA_P1;

public class A {
    private int privateVarA = 10;
    public int publicVarA = 20;
    protected int protectedVarA = 30;
    int defaultVarA = 40;

    public void display() {
        System.out.println("Class A - Access Modifiers");
        System.out.println("privateVarA: " + privateVarA);
        System.out.println("publicVarA: " + publicVarA);
        System.out.println("protectedVarA: " + protectedVarA);
        System.out.println("defaultVarA: " + defaultVarA);
    }
}
