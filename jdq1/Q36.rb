# Q36 2つのデータベースからユーザーネーム・学習項目・合計学習時間のデータを取得したら以下のようになりました

# {["田中", "JavaScript"]=>30}
# 上記のハッシュを以下のようなハッシュに変換してください
# {"user_name" => "田中", "learning_contents" => "JavaScript", "learning_time" => 30}

def q36
  hash = {["田中", "JavaScript"]=>30}
  keyAry = ["user_name", "learning_contents", "learning_time"]
  
  keyValue = hash.to_a.flatten
  
  ary = [keyAry, keyValue].transpose
  h = Hash[*ary.flatten]
  
  p h
end