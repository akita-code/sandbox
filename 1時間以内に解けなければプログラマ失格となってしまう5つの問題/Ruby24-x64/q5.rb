def q5(l)
    (3**(l.size-1)-1).times.map do |i|
        l.zip(i.to_s(3).rjust(l.size-1, "0").chars.map{|s|
            s=="0" ? "+" : s=="1" ? "-" : ""
        }).join
    end.each{|f| puts f + "=100" if eval(f) == 100}
end
q5(("1".."9").to_a)
