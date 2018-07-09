var APP = APP || {
    util:{},
};

APP.util = (function() {
    fizzbuzz = i => {
        if (i % 15 === 0) {
            return "FizzBuzz!";
        } else if (i % 3 === 0) {
            return "Fizz";
        } else if (i % 5 === 0) {
            return "Buzz";
        } else {
            return i.toString(10);
        }
    };

    return {
        arr : Array.apply(null, new Array(100)).map((v, i) => i+1),
        fizzbuzz: fizzbuzz,
    };
}());

APP.util.arr.map(APP.util.fizzbuzz).forEach(console.log);