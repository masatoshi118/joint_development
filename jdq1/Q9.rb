# Q9. 以下の配列を用いて、期待通りの出力結果になるようにコードを書いてください

# ["田中", "佐藤", "佐々木", "高橋"]
# 期待結果
# 会員No.1 田中さん
# 会員No.2 佐藤さん
# 会員No.3 佐々木さん
# 会員No.4 高橋さん

def q9
  names = ["田中", "佐藤", "佐々木", "高橋"]

  names.each do |name|
    puts "会員No.#{names.index(name)+1} #{name}さん"
  end
end

# whileを使う方法
# n=1
# while n <= names.size
#   puts "会員No.#{n} #{names[n-1]}さん"
#   n += 1
# end