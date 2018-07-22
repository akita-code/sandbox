arr1 = gets.to_s.chomp.chars
arr2 = gets.to_s.chomp.chars
n = arr1.size 
eq = false

n.times do |i|
    eq = true
    n.times do |j|
        if i + j >= n
            current = i + j - n 
        else
            current = i + j
        end

        if arr1[j] != arr2[current]
            eq = false
            break 
        end
    end

    break if eq
end

if eq
    puts "Yes"
else
    puts "No"
end