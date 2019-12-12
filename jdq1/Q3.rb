# Q3. 以下の文字列の配列を数字だけの配列に変換してください
# ["1", "2", "3", "4", "5"]
# 期待する配列
# [1, 2, 3, 4, 5] 



array = ["1", "2", "3", "4", "5"]
result = []

#リファクタリング
p array.map(&:to_i)


#すぐに思いついた方法
# array.each do |n|
#   result.push(n.to_i)
# end

# puts result.to_s


