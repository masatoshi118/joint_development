# Q1. 以下の配列から、期待された結果の配列を作成してください
# [1, 2, 3, 4, 5]
# 期待される配列
# [1, 3, 5, 7, 9]

def q1
  array = [1, 2, 3, 4, 5]
  p array.map {|n| 2 * n - 1}
end

# リファクタリング
# print array.each.with_index(0).map {|fac, i| fac + i }

# はじめに思いついた方法
# array.each.with_index(0) do |fac, i|
#   n = fac + i
#   result.push(n)
# end

# puts result.to_s

