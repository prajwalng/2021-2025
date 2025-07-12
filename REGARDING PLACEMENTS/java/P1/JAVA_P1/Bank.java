package JAVA_P1;

import java.util.Scanner;

class BankAccount {
    private double balance;

    public BankAccount(double initialBalance) {
        balance = initialBalance;
    }

    public void deposit(double amount) {
        if (amount > 0) {
            balance = balance + amount;
            System.out.print("Deposit ₹" + amount);
        } else {
            System.out.println("Invalid deposit amount");
        }
    }

    public void withdraw(double amount) {
        if (amount > 0 && amount <= balance) {
            balance = balance - amount;
            System.out.print("Withdraw ₹" + amount);
        } else {
            System.out.println("Invalid withdrawal amount or insufficient balance");
        }
    }

    public double getBalance() {
        return balance;
    }
}

class SBAccount extends BankAccount {
    public SBAccount(double initialBalance) {
        super(initialBalance);
    }

    public void withdraw(double amount) {
        if (getBalance() - amount >= 100) {
            super.withdraw(amount);
        } else {
            System.out.println("Withdrawal not allowed: Minimum balance of ₹100 should be maintained.");
        }
    }
}

class Bank {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.print("Enter the initial Balance for SBAccount");
        double initialBalance = sc.nextDouble();
        SBAccount sbAccount = new SBAccount(initialBalance);

        while (true) {
            System.out.println("\n1. Deposit \n2. withdraw \n3. CheckBalance \n4. Exit");
            System.out.print("Select an Option /1/2/3/4.");
            int Choice = sc.nextInt();

            switch (Choice) {
                case 1:
                    System.out.print("Enter the deposit amount ₹");
                    double depositAmount = sc.nextDouble();
                    sbAccount.deposit(depositAmount);
                    break;

                case 2:
                    System.out.print("Enter the deposit amount ₹");
                    double withdrawAmount = sc.nextDouble();
                    sbAccount.withdraw(withdrawAmount);
                    break;

                case 3:
                    System.out.print("Current Balance: ₹" + sbAccount.getBalance());
                    break;

                case 4:
                    System.out.print("Exiting the program.");
                    sc.close();

                    System.exit(0);

                default:
                    System.out.println("Invalid choice. Please select a valid option.");

            }
        }
    }
}