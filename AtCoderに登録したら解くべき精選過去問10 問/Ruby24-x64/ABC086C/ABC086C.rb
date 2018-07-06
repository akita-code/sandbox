N = gets.to_i

board = []
board << [0, 0, 0]
N.times do
    board << gets.chomp.split(" ").map(&:to_i)
end

ans = "Yes" 
board.each_with_index do |step, i|
    break if board.size == i + 1 
    next_step = board[i + 1]
    move = next_step[0] - step[0]
    distance = (next_step[1] - step[1]).abs + (next_step[2] - step[2]).abs
    if move < distance || (move % 2) != (distance % 2)
        ans = "No"
        break
    end
end

puts ans