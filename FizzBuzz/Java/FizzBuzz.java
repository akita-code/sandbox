import java.util.List;
import java.util.stream.*;
import java.util.function.*;

public class FizzBuzz {
    public static void main(String[] args) {
        IntConsumer c = (x) -> {
            if (x % 15 == 0) {
                System.out.println("FizzBuzz!");
            } else if (x % 3 == 0) {
                System.out.println("Fizz");
            } else if (x % 5 == 0) {
                System.out.println("Buzz");
            } else {
                System.out.println("");
            }
        };

        java.util.stream.IntStream.rangeClosed(1, 100).forEach(c);
    }
}