#-------------------レビュー待ち---------------------
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
  #--------------------------------------------------

  #-------------------レビュー待ち---------------------
  #Q34.次のコードが成り立つようにコードを書き加えてください

  # programming_language = ["ruby", "php", "python", "javascript"]

  # p programming_language
  # p upper_case_programming_language

  # 出力結果

  # ["Ruby", "Php", "Python", "Javascript"]
  # ["RUBY", "PHP", "PYTHON", "JAVASCRIPT"]


  def q34
    programming_language = ["ruby", "php", "python", "javascript"]

    upper_case_programming_language = programming_language.map(&:upcase)

    p programming_language
    p upper_case_programming_language
  end

  #--------------------------------------------------

  #-------------------レビュー待ち---------------------

  # Q35 2つのデータベースからユーザーネーム・学習項目・合計学習時間のデータを取得したら以下のようになりました

  # [["田中", "JavaScript"], 30]
  # 上記の配列を以下のようなハッシュに変換してください
  # {"user_name" => "田中", "learning_contents" => "JavaScript", "learning_time" => 30}

  def q35
    array = [["田中", "JavaScript"], 30]
    keyAry = ["user_name", "learning_contents", "learning_time"]

    keyValue = array.flatten

    ary = [keyAry, keyValue].transpose
    h = Hash[*ary.flatten]

    p h
  end
  #--------------------------------------------------

  #-------------------レビュー待ち---------------------
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
  #--------------------------------------------------

  #-------------------レビュー待ち---------------------
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
  #--------------------------------------------------