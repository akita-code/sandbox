a, b = gets.to_s.chomp.split(" ")
print case (a.to_i * b.to_i) % 2
  when 0 then 'Even'
  else 'Odd'
  end
    