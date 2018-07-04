def q1_a(list)
    sum = 0
    for i in list 
        sum += i
    end
    puts sum
end

def q1_b(list)
    sum = 0
    i = 0
    loop do
        break if list.size <= i
        sum += list[i - 1]
        i += 1
    end
    puts sum
end

def q1_c(list)
    sum = 0
    i = 0
    fx =-> () {
        sum += list[i]
        i += 1
        fx[] if list.size > i 
    }
    fx[]
    puts sum
end

list = [1, 2, 3, 4, 5]
q1_a(list)
q1_b(list)
q1_c(list)