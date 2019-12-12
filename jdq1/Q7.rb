# Q7. 配列であればtrue、配列でなければfalseを返すコードを書いてください

# 例
# []
# -> true

# {}
# -> false

test1 = []
test2 = {}

#リファクタリング
def arraytest_r(test)
  test.kind_of?(Array) ? true : false
end

# kind_of?メソッドを使ったパターン
def array_test(test) 
  if test.kind_of?(Array)
    puts "true"
  else
    puts "false"
  end
end

# classメソッドを使ったパターン
def array_test1(test) 
  if test.class == Array
    puts "true"
  else
    puts "false"
  end
end