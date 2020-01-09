# Q33.  次の指定のキー name, age, address, tell が、Hash値のキーとして過不足無く含まれているかを判定するコードを書いてください

def q33
user_1 = {name: "あじー", age: 32, address: "札幌", tell: "090-000-000"}
user_2 = {name: "あじー", age: 32, address: "札幌"}
user_3 = {name: "あじー", age: 32, address: "札幌", tell: "090-000-000", gender: "male"}

def key_check(user)
  # 順番を入れ替えて記述
  valid_keys = [:name, :tell, :address, :age] 
  user_keys = user.keys
  # sortメソッドを使って並び替えてから比較
  p valid_keys.sort == user_keys.sort 
end

key_check(user_1)
key_check(user_2)
key_check(user_3)
end
