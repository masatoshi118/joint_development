# Q23. 以下のハッシュをキー、バリュー含め全て配列に変換してください

# {name: "satou", age: 33, address: "saitama", hobby: "soccer", email: "hoge@fuga.com"}
# 変換後の配列
# [:name, "satou", :age, 33, :address, "saitama", :hobby, "soccer", :email, "hoge@fuga.com"]

def q23
  has = {name: "satou", age: 33, address: "saitama", hobby: "soccer", email: "hoge@fuga.com"}

  p has.to_a.flatten
end