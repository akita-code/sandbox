def concat(list1, list2)
    concat_list = []
    list1.each_with_index do |e, i|
        concat_list << e
        concat_list << list2[i]
    end
    concat_list
end

list1 = ["a", "b", "c"]
list2 = ["1", "2", "3"]
print concat(list1, list2)