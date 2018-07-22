N, A, B = gets.to_s.split(" ").map(&:to_i)

total = 0
range = (A..B).to_a
1.upto(N) do |n|
    x = n.to_s.chars.map(&:to_i).reduce(:+)
    total += n if range.include?(x)
end

puts total