import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.util.Scanner;

public class JavaBasics extends Main {
    public static void run(){
        String csvFile = "JavaBasic.CSV";
        String line = "";
        String splitBy = ",";
        int no = 1;
        int correct = 0;
        int incorrect = 0;
        int score = 0;

        Scanner in = new Scanner(System.in);

        try (BufferedReader br = new BufferedReader(new FileReader(csvFile))) {
            while ((line = br.readLine()) != null) {
                String[] question = line.split(splitBy);
                System.out.println("Question " + no + ":\n" + question[0]
                        + "\nA. " + question[1]
                        + "\nB. " + question[2]
                        + "\nC. " + question[3]
                        + "\nD. " + question[4]);
                String answer = in.nextLine();
                no++;
                if (question[5].equals(answer)) {
                    correct++;
                    score = (correct * 100) / 10;
                    System.out.println("Your answer is correct.");
                } else {
                    incorrect++;
                    System.out.println("Wrong Answer. The Correct Answer is " + question[5] + ". " + question[6]);
                }
            }
            System.out.println(name + ", you answered " + correct + " Questions Right, " + incorrect + " Questions Wrong for a Total of 10 Questions.");
            System.out.println("You scored " + score + "%");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
