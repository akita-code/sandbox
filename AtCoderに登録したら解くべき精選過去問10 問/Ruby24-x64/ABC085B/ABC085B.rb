require "set"

N = gets.to_i
set = Set.new()
N.times{ set.add(gets.to_i) }
p set.size