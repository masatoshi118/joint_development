# Q35 2つのデータベースからユーザーネーム・学習項目・合計学習時間のデータを取得したら以下のようになりました

# [["田中", "JavaScript"], 30]
# 上記の配列を以下のようなハッシュに変換してください
# {"user_name" => "田中", "learning_contents" => "JavaScript", "learning_time" => 30}

def q35
  array = [["田中", "JavaScript"], 30]
  keyAry = ["user_name", "learning_contents", "learning_time"]
  
  keyValue = array.flatten
  
  ary = [keyAry, keyValue].transpose
  p ary.to_h
end