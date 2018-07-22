str = gets.chomp.to_s

dream = /#{"dream"}/
dreamer = /#{"dreamer"}/
erase = /#{"erase"}/
eraser = /#{"eraser"}/

str.gsub!(eraser, "")
str.gsub!(erase, "")
str.gsub!(dreamer, "")
str.gsub!(dream, "")

if str == ""
    puts "YES"
else
    puts "NO"
end