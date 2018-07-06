A, B, C, X = gets.chomp.to_i + 1, gets.chomp.to_i + 1, gets.chomp.to_i + 1, gets.chomp.to_i

count = 0
A.times do |m|
    a = 500 * m
    break if a > X
    B.times do |n|
        b = 100 * n
        break if a + b > X
        C.times do |l|
            c = 50 * l
            break if a + b + c > X
            count += 1 if a + b + c == X
        end
    end
end

p count