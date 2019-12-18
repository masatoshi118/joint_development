# Q25.  配列 keys の各要素を、ハッシュ user がキーとして保持するかどうかを判定するコードを書いてください

# keys = [:age, :name, :hobby, :address]
# user = { name: "saitou", hobby: "soccer", age: 33, role: "admin" }
# 例（意図が伝われば文章は自由に変えていただいて大丈夫です）
# userにはageというキーがあります
# userにはaddressというキーがありません

def q25
  keys = [:age, :name, :hobby, :address]
  user = { name: "saitou", hobby: "soccer", age: 33, role: "admin" }

  keys.each do |key|
    puts (user.has_key?(key) ? "userにはキー#{key}があります" : "userにはキー#{key}がありません")
  end
end