def q5(list)
    sign_list = [0, 0, 0, 0, 0, 0, 0, 0]

    loop do
        break if sign_list.min == 2 

        sign_list.each_with_index do |sign, i|
            case sign
            when 0..1 then sign_list[i] += 1; break
            else sign_list[i] = 0
            end
        end

        formula = ""
        list.each_with_index do |num, i|
           formula << num.to_s

           break if sign_list.size <= i

           formula << case sign_list[i]
           when 0 then "+"
           when 1 then "-"
           else ""
           end
        end

        if eval(formula) == 100
            puts formula + "=100"
        end
    end
end

list = [1, 2, 3, 4, 5, 6, 7, 8, 9]
q5(list)
