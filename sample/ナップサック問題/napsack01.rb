# 配列の添え字
NAME, PRICE, WAIT = 0, 1, 2

# 標準入力からの取得項目の初期化
init =-> () {
    w, n = gets.to_s.split(" ").map(&:to_i)
    item_list = []
    n.times do |l|
        item_list << gets.to_s.split(" ").map(&:to_i)
    end
    [w, n, item_list]
}
# W:所持できる最大重量
# N:アイテムの種類
# item_list:アイテムの一覧
W, N, item_list = init[]

memo = Array.new(N){Array.new(W+1, 0)}
p memo

put_memo_line =-> (i) {
    current_line = memo[i-1]
    next_line = memo[i]
    item = item_list[i]

    next_line[item[WAIT]] = item[PRICE] if item[WAIT] <= W
    
    if i != 0
        current_line.each.with_index do |n, j|
            next if n == 0

            # 使わない
            if next_line[j] < n
                next_line[j] = n
            end

            # 使う
            if item[WAIT] <= W && j+item[WAIT] <= W
                if next_line[j+item[WAIT]] < n + item[PRICE]
                    next_line[j+item[WAIT]] = n + item[PRICE]
                end
            end
        end
    end
    p next_line
}

N.times do |i|
    put_memo_line[i]
end

p memo