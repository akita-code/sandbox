fx =-> (i) {
  case
  when i % 15 == 0 then "FizzBuzz!"
  when i % 3 == 0 then "Fizz"
  when i % 5 == 0 then "Buzz"
  else ""
  end
}

num_arr = 1.upto(100).to_a

num_arr.each do |i|
  puts fx.(i)
end