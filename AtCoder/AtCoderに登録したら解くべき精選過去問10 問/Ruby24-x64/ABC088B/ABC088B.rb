N = gets.to_i
arr = gets.chomp.split(" ").map(&:to_i)

alice = 0
bob = 0

arr.sort.reverse.each_with_index do |p, i|
    case i % 2
    when 0 then alice += p
    else bob += p
    end
end

puts alice - bob