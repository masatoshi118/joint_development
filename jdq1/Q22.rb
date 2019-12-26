# Q22. ハッシュを格納した以下の配列を使用し、期待した結果になるようにコードを書いてください

# users = [
# {name: "satou", age: 33, address: "saitama", hobby: "soccer", email: "hoge@fuga.com"},
# {},
# {name: "yamada", age: 22, address: "tokyo", hobby: "soccer", email: "hoge@fuga.com"},
# {},
# {name: "suzuki", age: 44, address: "yamaguchi", hobby: "baseball", email: "hoge@fuga.com"}
# ]
# 期待結果
# ハッシュにデータがある場合：No〜 名前〜、年齢〜、趣味〜、メール〜
# ハッシュがからの場合：データなし

def q22
  users = [
    {name: "satou", age: 33, address: "saitama", hobby: "soccer", email: "hoge@fuga.com"},
    {},
    {name: "yamada", age: 22, address: "tokyo", hobby: "soccer", email: "hoge@fuga.com"},
    {},
    {name: "suzuki", age: 44, address: "yamaguchi", hobby: "baseball", email: "hoge@fuga.com"}
    ]

    users.each.with_index(1) do |user, i|
      if user.empty?
        puts "データ無し"
      else
        puts "No#{i} 名前 #{user[:name]}、年齢 #{user[:age]}、趣味 #{user[:hobby]}、メール #{user[:email]}"
      end
    end
end