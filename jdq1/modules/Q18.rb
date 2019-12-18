# Q18. 以下のハッシュから name の値を取り出して下さい

# {user: {name: "satou", age: 33}}

def q18
  has = {user: {name: "satou", age: 33}}
  p has[:user][:name]
end