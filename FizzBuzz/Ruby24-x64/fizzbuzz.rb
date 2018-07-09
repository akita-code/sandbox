fx =-> (i) {
  return case
  when i % 15 == 0 then "FizzBuzz!"
  when i % 3 == 0 then "Fizz"
  when i % 5 == 0 then "Buzz"
  else i.to_s
  end
}

1.upto(100).map(&fx).each{|s| puts s}