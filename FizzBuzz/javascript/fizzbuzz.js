const arr = Array.apply(null, new Array(100)).map((v, i) => i)

fizzbuzz = (i) => {
    if (i % 15 == 0) {
        console.log("FizzBuzz!");
    } else if (i % 3 == 0) {
        console.log("Fizz");
    } else if (i % 5 == 0) {
        console.log("Buzz");
    } else {
        console.log("");
    }
}

for (var i in arr) {
    fizzbuzz(i);
}
