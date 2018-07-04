def q4(list)
    length_list = list.map{|e| e.to_s.size }
    str_list = list.map.with_index{|e, i| e.to_s.ljust(length_list.max, "A")}
    p str_list.sort.reverse.join.delete("A").to_i
end

list = [50, 2, 1, 9, 310]
q4(list)
