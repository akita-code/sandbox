1.upto(100) { |i|
  puts case
  when i % 15 == 0 then "FizzBuzz!"
  when i % 3 == 0 then "Fizz"
  when i % 5 == 0 then "Buzz"
  else ""
  end
}
