import java.io.*;

public class main {
    static int i;

    // factorial calculates factorial given not negative int input.
    static int factorial(int n) {
        return n < 2 ? 1 : n * factorial(n - 1);
    }

    // readStdin reads user's input from stdin as int.
    static void readStdin() {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        try {
            i = Integer.parseInt(br.readLine());
        } catch (IOException e) {
            System.out.println(e);
        }
    }

    // cycle performs an execution cycle.
    static void cycle() {
        System.out.println("input int");
        readStdin();
        if (i < 0)
            System.out.println("input must be not negative");
        else
            System.out.println(String.format("factorial of %d is %d", i, factorial(i)));
    }

    // main is the program entrypoint.
    public static void main(String[] args) {
        while (true) {
            cycle();
        }
    }
}
