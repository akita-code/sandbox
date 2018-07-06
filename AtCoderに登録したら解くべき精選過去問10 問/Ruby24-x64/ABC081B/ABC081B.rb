n = gets.chomp.to_i
number_list = gets.chomp.split(" ").map(&:to_i) 
count = 0 
b = false

loop do
    n.times do |i|
        b = true if number_list[i] % 2 == 1
        number_list[i] /= 2
    end
    break if b
    count += 1
end
print count