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

memo = []
memo << Array.new(W+1, 0)

put_memo_line =-> (memo_line) {
    new_memo_line = Array.new(W+1, 0)
    if memo_line.max == 0
        item_list.each do |item|
            new_memo_line[item[WAIT]] += item[PRICE] if item[WAIT] <= W
        end
    else
        memo_line.each.with_index do |n, i|
            next if n == 0
            item_list.each do |item|
                if item[WAIT] <= W && i+item[WAIT] <= W
                    if new_memo_line[i+item[WAIT]] < n + item[PRICE]
                        new_memo_line[i+item[WAIT]] = n + item[PRICE]
                    end
                end
            end
        end
    end
    new_memo_line
}

0.step do |i|
    if i == 0 || memo.last != memo[memo.size-2]
        memo << put_memo_line[memo.last]
    end
    if i != 0 && memo.last.max == 0
        memo.pop
        break
    end
end
p memo.last.max