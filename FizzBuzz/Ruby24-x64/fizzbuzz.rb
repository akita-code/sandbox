fx =-> (i) {
  puts case
  when i % 15 == 0 then "FizzBuzz!"
  when i % 3 == 0 then "Fizz"
  when i % 5 == 0 then "Buzz"
  else i
  end
}

1.upto(100).map(&fx)