import java.util.Scanner;

public class Main {
    static String name;

    public static void main(String[] args) {
        Scanner in = new Scanner(System.in);
        System.out.println("Enter Your Name :");
        name = in.nextLine();

        System.out.println("Choose your Multiple Choice Question Set. The Options are :");
        System.out.println("1. Java Basics");
        System.out.println("2. Control Structures");
        int input = in.nextInt();

        if (input == 1) {
            JavaBasics.run();
        }
        if (input == 2) {
            ControlStructures.run();
        }
        in.close();
    }
}
