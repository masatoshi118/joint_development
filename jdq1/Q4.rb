# Q4. 以下の二つの配列を合体させた新しい配列を作成してください
# ["dog", "cat", "fish"]
# ["bird", "bat", "tiger"]

def q4
  array1 = ["dog", "cat", "fish"]
  array2 = ["bird", "bat", "tiger"]

  p array1 + array2
end

# pushを使う方法
# p array1.push(array2)
# print result.flatten

# concatを使う方法
# print array1.concat(array2)
