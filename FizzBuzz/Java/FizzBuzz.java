import java.util.stream.*;
import java.util.function.*;

public class FizzBuzz {
    public static void main(String[] args) {
        IntFunction<String> c = (x) -> {
            if (x % 15 == 0) {
                return "FizzBuzz!";
            } else if (x % 3 == 0) {
                return "Fizz";
            } else if (x % 5 == 0) {
                return "Buzz";
            } else {
                return String.valueOf(x);
            }
        };

        IntStream
            .rangeClosed(1, 100)
            .mapToObj(c)
            .forEach(System.out::println);
    }
}