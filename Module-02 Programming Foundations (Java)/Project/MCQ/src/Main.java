import java.util.Scanner;

public class Main {
    static String name;

    public static void main(String[] args) {
        String java, control, input;

        java = "1";
        control = "2";

        Scanner in = new Scanner(System.in);
        System.out.println("Enter Your Name :");
        name = in.nextLine();

        System.out.println("Choose your Multiple Choice Question Set. The Options are :");
        System.out.println("1. Java Basics");
        System.out.println("2. Control Structures");
        input = in.nextLine();

        if (input.equals(java)) {
            JavaBasics.run();
        }
        if (input.equals(control)) {
            ControlStructures.run();
        }
        in.close();
    }
}
