def q4(list)
    p list.map{|x| x.to_s.ljust(list.max.to_s.size, "A")}.sort.reverse.join.delete("A").to_i
end

list = [50, 2, 1, 9, 310]
q4(list)
