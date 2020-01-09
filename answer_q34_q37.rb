
  #---------------------修正-----------------------
  #Q34.次のコードが成り立つようにコードを書き加えてください

  # programming_language = ["ruby", "php", "python", "javascript"]

  # p programming_language
  # p upper_case_programming_language

  # 出力結果

  # ["Ruby", "Php", "Python", "Javascript"]
  # ["RUBY", "PHP", "PYTHON", "JAVASCRIPT"]


  def q34
    programming_language = ["ruby", "php", "python", "javascript"]
    
    programming_language.map(&:capitalize!)
    upper_case_programming_language = programming_language.map(&:upcase)
    
    p programming_language
    p upper_case_programming_language
  end
    

  #--------------------------------------------------

  #----------------------修正-------------------------

  # Q35 2つのデータベースからユーザーネーム・学習項目・合計学習時間のデータを取得したら以下のようになりました

  # [["田中", "JavaScript"], 30]
  # 上記の配列を以下のようなハッシュに変換してください
  # {"user_name" => "田中", "learning_contents" => "JavaScript", "learning_time" => 30}

  def q35
    array = [["田中", "JavaScript"], 30]
    keyAry = ["user_name", "learning_contents", "learning_time"]
    
    keyValue = array.flatten
    
    p [keyAry, keyValue].transpose.to_h
  end
  #--------------------------------------------------

  #----------------------修正-------------------------
  # Q36 2つのデータベースからユーザーネーム・学習項目・合計学習時間のデータを取得したら以下のようになりました

  # {["田中", "JavaScript"]=>30}
  # 上記のハッシュを以下のようなハッシュに変換してください
  # {"user_name" => "田中", "learning_contents" => "JavaScript", "learning_time" => 30}

  def q36
    hash = {["田中", "JavaScript"]=>30}
    keyAry = ["user_name", "learning_contents", "learning_time"]

    keyValue = hash.to_a.flatten

    p [keyAry, keyValue].transpose.to_h
  end
  #--------------------------------------------------

  #----------------------修正-------------------------
  # Q37 2つのデータベースからユーザーネーム・学習項目・合計学習時間のデータを取得したら以下のようになりました

  # {["田中", "HTML"]=>30, ["斎藤", "JavaScript"]=>50}
  # 上記のハッシュを以下のようなハッシュの配列に変換してください
  # [{"user_name" => "田中", "learning_contents" => "HTML", "learning_time" => 30}, {"user_name" => "斎藤", "learning_contents" => "JavaScript", "learning_time" => 50}]

  def q37
    hash = {["田中", "HTML"]=>30, ["斎藤", "JavaScript"]=>50}
    keyAry = ["user_name", "learning_contents", "learning_time"]
  
    arrays = hash.to_a
    
    arrays.map do |array|
      keyValue = array.flatten
      p [keyAry, keyValue].transpose.to_h
    end
  end
  #--------------------------------------------------