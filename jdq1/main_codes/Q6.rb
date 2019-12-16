# Q6. 配列が空であればtrue、1つ以上の要素があればfalseを返すコードを書いてください

def q6
  array1 = []
  array2 = [1, 5, 8, 10]
  array3 = [nil] 

  p array1.empty?
  p array2.empty?
  p array3.empty? # nilの場合はfalseになる
end


# はじめに思いついた方法
# def ar_empty(array)
#   if array.empty?
#     puts "true"
#   else
#     puts "false"
#   end
# end