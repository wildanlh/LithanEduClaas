import java.util.Scanner;

public class BattleShips {
    public static int rows = 10;
    public static int cols = 10;
    public static int playerShips;
    public static int computerShips;
    public static boolean oceanMapIsExist;
    public static String[][] grid = new String[rows][cols];
    public static int[][] storedShips = new int[rows][cols];
    public static Scanner input = new Scanner(System.in);

    public static void main(String[] args) {
        System.out.println("**** Welcome to Battle Ships game ****");
        System.out.println("Right now, sea is empty");

        // Step 1
        oceanMap();

        // Step 2
        playerShips();

        // Step 3
        computerShips();

        // Step 4
        do {
            battleShips();
        } while (playerShips > 0 && computerShips > 0);

        // Step 5 - Game Over
        gameOver();
    }

    // Step 1
    public static void oceanMap() {
        System.out.print("\n  ");
        for (int i = 0; i < cols; i++) {
            System.out.print(i);
        }
        System.out.println();

        if (oceanMapIsExist) {
            // Print Ocean Map if Ocean Map is exist
            for (int x = 0; x < grid.length; x++) {
                System.out.print(x + "|");
                for (int y = 0; y < grid[x].length; y++) {
                    System.out.print(grid[x][y]);
                }
                System.out.println("|" + x);
            }
        } else {
            // Create Ocean Map if Ocean Map isn't exist
            for (int x = 0; x < grid.length; x++) {
                for (int y = 0; y < grid[x].length; y++) {
                    grid[x][y] = " ";
                    if (y == 0) {
                        System.out.print(x + "|" + grid[x][y]);
                    } else if (y == grid[x].length - 1) {
                        System.out.print(grid[x][y] + "|" + x);
                    } else {
                        System.out.print(grid[x][y]);
                    }
                }
                System.out.println();
            }
            oceanMapIsExist = true;
        }

        System.out.print("  ");
        for (int i = 0; i < cols; i++) {
            System.out.print(i);
        }
        System.out.println("\n");
    }

    // Step 2
    public static void playerShips() {
        playerShips = 5;

        System.out.println("Deploy your ships:");

        for (int i = 1; i <= playerShips;) {
            System.out.print("Enter X coordinate for your " + i + ". ship: ");
            int y = input.nextInt();
            System.out.print("Enter Y coordinate for your " + i + ". ship: ");
            int x = input.nextInt();

            if ((x >= 0 && x < rows) && (y >= 0 && y < cols) && (grid[x][y].equals(" "))) {
                grid[x][y] = "@";
                storedShips[x][y] = 1;
                i++;
            } else if ((x >= 0 && x < rows) && (y >= 0 && y < cols) && (grid[x][y].equals("@"))) {
                System.out.println("you  locatican NOT place two or more ships on the sameon");
            } else if ((x < 0 || x >= rows) || (y < 0 || y >= cols)) {
                System.out.println("you can't place ships outside the 10 by 10 grid");
            }
        }
        oceanMap();
    }

    // Step 3
    public static void computerShips() {
        computerShips = 5;

        System.out.println("Computer is deploying ships");

        for (int i = 0; i < computerShips;) {
            int x = (int) (Math.random() * 10);
            int y = (int) (Math.random() * 10);

            if ((x >= 0 && x < rows) && (y >= 0 && y < cols) && (grid[x][y].equals(" "))) {
                storedShips[x][y] = 2;
                System.out.println((i + 1) + ". ship DEPLOYED");
                i++;
            }
        }
        oceanMap();
    }

    // Step 4
    public static void battleShips() {
        playerTurn();
        computerTurn();
        oceanMap();

        System.out.println();
        System.out.println("Your ships: " + playerShips + " | Computer ships: " + computerShips);
        System.out.println();
    }

    // Player Turn
    public static void playerTurn() {
        System.out.println("\nYOUR TURN");
        boolean invalidGuess;
        int x;
        int y;

        do {
            System.out.print("Enter X coordinate: ");
            y = input.nextInt();
            System.out.print("Enter Y coordinate: ");
            x = input.nextInt();

            invalidGuess = (x < 0 || x >= rows) || (y < 0 || y >= cols);

            if (invalidGuess) {
                System.out.println("You can't place ships outside the " + rows + " by " + cols + " grid");
            } else if (storedShips[x][y] == 3) {
                System.out.println("You or the computer have already guessed there");
            }
        } while (invalidGuess || storedShips[x][y] == 3);

        if (storedShips[x][y] == 2) {
            System.out.println("Boom! You sunk the ship!");
            storedShips[x][y] = 3;
            grid[x][y] = "!";
            --computerShips;
        } else if (storedShips[x][y] == 1) {
            System.out.println("Oh no, you sunk your own ship :(");
            storedShips[x][y] = 3;
            grid[x][y] = "x";
            --playerShips;
        } else if (storedShips[x][y] != 2 || storedShips[x][y] != 1) {
            System.out.println("Sorry, you missed");
            storedShips[x][y] = 3;
            grid[x][y] = "-";
        }
    }

    // Computer Turn
    public static void computerTurn() {
        System.out.println("\nCOMPUTER'S TURN");
        boolean invalidGuess;
        boolean validGuess;
        int x;
        int y;

        do {
            x = (int) (Math.random() * 10);
            y = (int) (Math.random() * 10);

            validGuess = (x >= 0 && x < rows) && (y >= 0 && y < cols) && storedShips[x][y] != 3;
            invalidGuess = storedShips[x][y] == 3;

            if (validGuess) {
                if (storedShips[x][y] == 1) {
                    System.out.println("The Computer sunk one of your ships!");
                    grid[x][y] = "x";
                    --playerShips;
                } else if (storedShips[x][y] == 2) {
                    System.out.println("The Computer sunk one of its own ships");
                    grid[x][y] = "!";
                    --computerShips;
                } else if (storedShips[x][y] != 1 || storedShips[x][y] != 2) {
                    System.out.println("Computer missed");
                    storedShips[x][y] = 3;
                }
            }
        } while (invalidGuess);
    }

    // Step 5
    public static void gameOver() {
        oceanMap();
        System.out.println("Your ships: " + playerShips + " | " + "Computer ships: " + computerShips);

        if (playerShips > 0 && computerShips <= 0) {
            System.out.println("Hooray You win the battle :)");
        } else {
            System.out.println("Computer win the battle, You Lose :(");
        }
    }
}