N, Y = gets.split(" ").map(&:to_i)

b = false
x, y, z = 0, 0, 0

catch(:break) do
    N.downto(0) do |a|
        (N - a).downto(0) do |b|
            c = N - a - b
            if (10000 * a) + (5000 * b) + (1000 * c) == Y
                x, y, z = a, b, c
                throw :break
            end
        end
    end
    x, y, z = -1, -1, -1
end
puts [x, y, z].map(&:to_s).join(" ")
