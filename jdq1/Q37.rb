# Q37 2つのデータベースからユーザーネーム・学習項目・合計学習時間のデータを取得したら以下のようになりました

# {["田中", "HTML"]=>30, ["斎藤", "JavaScript"]=>50}
# 上記のハッシュを以下のようなハッシュの配列に変換してください
# [{"user_name" => "田中", "learning_contents" => "HTML", "learning_time" => 30}, {"user_name" => "斎藤", "learning_contents" => "JavaScript", "learning_time" => 50}]

def q37
  hash = {["田中", "HTML"]=>30, ["斎藤", "JavaScript"]=>50}
  keyAry = ["user_name", "learning_contents", "learning_time"]
  result_h = []
  
  arrays = hash.to_a
  
  arrays.each do |array|
    keyValue = array.flatten
  
    ary = [keyAry, keyValue].transpose
    h = Hash[*ary.flatten]
    result_h << h
  end
  
  p result_h
end