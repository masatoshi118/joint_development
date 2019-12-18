# Q21. 以下の配列から全てのキーを取り出してターミナルに出力してください

# {name: "satou", age: 33, address: "saitama", hobby: "soccer", email: "hoge@fuga.com"}

def q21
  has = {name: "satou", age: 33, address: "saitama", hobby: "soccer", email: "hoge@fuga.com"}

  has.keys.each {|key| puts key}
end