fx =-> (i) {
  case
  when i % 15 == 0 then "FizzBuzz!"
  when i % 3 == 0 then "Fizz"
  when i % 5 == 0 then "Buzz"
  else ""
  end
}

1.upto(100).map{|s| puts fx.(s)}