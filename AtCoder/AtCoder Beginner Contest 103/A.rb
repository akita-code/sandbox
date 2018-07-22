arr = gets.to_s.chomp.split(" ").map(&:to_i).sort.reverse

total = 0
last = 0
arr.each.with_index {|e, i|
    if i == 0
        last = e
    else
        total += (e - last).abs
        last = e
    end
}
p total