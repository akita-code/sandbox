def fizzbuzz(i):
    if i % 15 == 0:
        print("FizzBuzz!")
    elif i % 3 == 0:
        print("Fizz")
    elif i % 5 == 0:
        print("Buzz")
    else:
        print("")

[ fizzbuzz(i) for i in range(1, 100) ]