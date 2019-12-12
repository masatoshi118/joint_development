# Q6. 配列が空であればtrue、1つ以上の要素があればfalseを返すコードを書いてください

# 例
# []
# -> true

# [1, 5, 8, 10]
# -> false

array1 = []
array2 = [1, 5, 8, 10]
array3 = [nil]          # nilの場合はfalseになる

# リファクタリング
def arrayempty(array)
  array.empty? ? true : false
end


def ar_empty(array)
  if array.empty?
    puts "true"
  else
    puts "false"
  end
end