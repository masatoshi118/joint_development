# Q24. 以下のハッシュにおいて age というキーが含まれている場合は OK 、含まれていない場合は NG が表示されるようにしてください

# { name: "saitou", hobby: "soccer", age: 33, role: "admin" }
# { name: "yamada", hobby: "baseball", role: "normal" }

def q24
  users = [
    { name: "saitou", hobby: "soccer", age: 33, role: "admin" },
    { name: "yamada", hobby: "baseball", role: "normal" } 
  ]

  users.each do |user|
    puts (user.has_key?(:age) ? "OK" : "NG")
  end
end