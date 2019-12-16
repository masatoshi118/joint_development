# Q7. 配列であればtrue、配列でなければfalseを返すコードを書いてください

def q7
  test1 = []
  test2 = {}

  p test1.kind_of?(Array)
  p test2.kind_of?(Array)
end

# kind_of?メソッドを使ったパターン
# def array_test(test) 
#   if test.kind_of?(Array)
#     puts "true"
#   else
#     puts "false"
#   end
# end

# classメソッドを使ったパターン
# def array_test1(test) 
#   if test.class == Array
#     puts "true"
#   else
#     puts "false"
#   end
# end