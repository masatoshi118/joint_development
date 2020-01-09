
module Answers

  #-----------------------完了-----------------------

  # Q1. 以下の配列から、期待された結果の配列を作成してください
  # [1, 2, 3, 4, 5]
  # 期待される配列
  # [1, 3, 5, 7, 9]

  def q1
    array = [1, 2, 3, 4, 5]
    p array.map {|n| 2 * n - 1}
  end
  #-------------------------------------------------

  #-----------------------完了-----------------------
  # Q2. 以下の配列から、期待された結果の配列を作成してください
  # ["田中", "佐藤", "佐々木", "高橋"]
  # 期待する配列
  # ["田中", "佐藤", "佐々木", "高橋", "斎藤"]

  def q2
    array = ["田中", "佐藤", "佐々木", "高橋"]
    p array << "斎藤"
  end
  #-------------------------------------------------

  #-----------------------完了-----------------------
  # Q3. 以下の文字列の配列を数字だけの配列に変換してください
  # ["1", "2", "3", "4", "5"]
  # 期待する配列
  # [1, 2, 3, 4, 5] 

  def q3
    array = ["1", "2", "3", "4", "5"]
    p array.map(&:to_i)
  end
  #-------------------------------------------------

  #-----------------------完了-----------------------
  # Q4. 以下の二つの配列を合体させた新しい配列を作成してください
  # ["dog", "cat", "fish"]
  # ["bird", "bat", "tiger"]

  def q4
    array1 = ["dog", "cat", "fish"]
    array2 = ["bird", "bat", "tiger"]

    p array1 + array2
  end
  #-------------------------------------------------

  #-----------------------完了-----------------------
  # Q5. 以下の配列の中に3がいくつあるか数えるコードを書いてください
  # [1, 5, 8, 10, 2, 3, 2, 3, 3, 1, 4, 5, 9]

  def q5
    array = [1, 5, 8, 10, 2, 3, 2, 3, 3, 1, 4, 5, 9]

    p array.count(3)
  end
  #-------------------------------------------------

  #-----------------------完了-----------------------
  # Q6. 配列が空であればtrue、1つ以上の要素があればfalseを返すコードを書いてください

  def q6
    array1 = []
    array2 = [1, 5, 8, 10]
    array3 = [nil] 

    p array1.empty?
    p array2.empty?
    p array3.empty? # nilの場合はfalseになる
  end
  #-------------------------------------------------

  #-----------------------完了-----------------------
  # Q7. 配列であればtrue、配列でなければfalseを返すコードを書いてください

  def q7
    test1 = []
    test2 = {}

    p test1.kind_of?(Array)
    p test2.kind_of?(Array)
  end
  #-------------------------------------------------

  #-----------------------完了-----------------------
  # Q8. mapとは異なるメソッドを使って以下と全く同じ処理を実現させてください
  # numbers = ["6", "5", "3", "7", "1"]
  # p numbers.map {|item| item.to_i }
  # -> [6, 5, 3, 7, 1]

  def q8
    numbers = ["6", "5", "3", "7", "1"]
    result = []

    numbers.each do |n|
      result << n.to_i
    end

    p result
  end
  #-------------------------------------------------

  #-----------------------修正-----------------------
  # Q9. 以下の配列を用いて、期待通りの出力結果になるようにコードを書いてください
  # ["田中", "佐藤", "佐々木", "高橋"]
  # 期待結果
  # 会員No.1 田中さん
  # 会員No.2 佐藤さん
  # 会員No.3 佐々木さん
  # 会員No.4 高橋さん

  def q9
    names = ["田中", "佐藤", "佐々木", "高橋"]

    names.each.with_index(1) do |name, i|
      puts "会員No.#{i} #{name}さん"
    end
  end
  #-------------------------------------------------

  #-----------------------完了-----------------------
  # Q10.  以下の配列の最後に山下を追加してください
  # ["田中", "佐藤", "佐々木", "高橋"]

  def q10
    names = ["田中", "佐藤", "佐々木", "高橋"]

    p names << "山下"
  end
  #-------------------------------------------------

  #-----------------------完了-----------------------
  # Q11 以下の配列から重複する部分だけを抽出した新しい配列を作成してください
  # favorite_sport = ["フットサル", "バスケット"]
  # selected_sport = ["野球", "ボルダリング", "サッカー", "フットサル"]

  def q11
    favorite_sport = ["フットサル", "バスケット"]
    selected_sport = ["野球", "ボルダリング", "サッカー", "フットサル"]

    p favorite_sport & selected_sport
  end
  #-------------------------------------------------

  #-----------------------完了-----------------------
  # Q12 以下の配列を用いた繰り返し処理において、「うに」が含まれていれば「好物です」と表示し、そうでなければ「まぁまぁ好きです」と表示するようにコードを書いてください
  # ["いか", "たこ", "うに", "しゃけ", "うにぎり", "うに軍艦", "うに丼"]

  def q12
    menus = ["いか", "たこ", "うに", "しゃけ", "うにぎり", "うに軍艦", "うに丼"]

    menus.each do |menu|
      if menu.include?("うに")
        puts "好物です"
      else
        puts "まぁまぁ好きです"
      end
    end
  end
  #-------------------------------------------------

  #-----------------------完了-----------------------
  # Q13. 以下の配列から奇数だけを選んだ新しい配列を作成してください
  # [1, 2, 3, 4, 5]

  def q13
    numbers = [1, 2, 3, 4, 5]
    p numbers.select(&:odd?)
  end
  #-------------------------------------------------

  #-----------------------完了-----------------------
  # Q14. 以下の配列からnilの要素を削除してください
  # ["サッカー", "フットサル", nil, "野球", "バスケ", nil, "バレー"]

  def q14
    sports = ["サッカー", "フットサル", nil, "野球", "バスケ", nil, "バレー"]
    p sports.compact
  end
  #-------------------------------------------------

  #-----------------------完了-----------------------
  # Q15. 以下の配列からadminの数を数えてください
  # ["admin", "user", "user", "admin", "admin"]

  def q15
    array = ["admin", "user", "user", "admin", "admin"]
    p array.count("admin")
  end
  #-------------------------------------------------

  #-----------------------修正-----------------------
  # Q16. 以下の配列をもとに期待する出力結果になるようにコードを書いてください
  # ["サッカー", "バスケ", "野球", ["フットサル", "野球"], "水泳", "ハンドボール", ["卓球", "サッカー", "ボルダリング"]]

  # 期待結果
  # ユーザーの趣味一覧
  # No1 サッカー
  # No2 バスケ
  # No3 野球
  # No4 フットサル
  # No5 水泳
  # No6 ハンドボール
  # No7 卓球
  # No8 ボルダリング

  def q16
    sports = ["サッカー", "バスケ", "野球", ["フットサル", "野球"], "水泳", "ハンドボール", ["卓球", "サッカー", "ボルダリング"]]

    result = sports.flatten.uniq

    result.each.with_index(1) do |s, i|
      puts "No#{i} #{s}"
    end
  end
  #-------------------------------------------------

  #-----------------------完了-----------------------
  # Q17. 以下のハッシュから name の値を取り出してください
  # {name: "satou", age: 33}

  def q17
    user = {name: "satou", age: 33}
    p user[:name]
  end
  #-------------------------------------------------
  
  #-----------------------完了-----------------------
  # Q18. 以下のハッシュから name の値を取り出して下さい

  # {user: {name: "satou", age: 33}}

  def q18
    has = {user: {name: "satou", age: 33}}
    p has[:user][:name]
  end
  #-------------------------------------------------

  #-----------------------完了-----------------------
  # Q19. 以下の既存で存在する user_data に対して、 update_data の内容を反映させ user_data の内容を書き換えて下さい

  # user_data = {name: "神里", age: 31, address: "埼玉"}
  # update_data = {age: 32, address: "沖縄"}
   
  def q19
    user_data = {name: "神里", age: 31, address: "埼玉"}
    update_data = {age: 32, address: "沖縄"}
  
    p user_data.update(update_data)
  end
  #-------------------------------------------------

  #----------------------完了-----------------------
  # Q20. 以下の全てのハッシュの name と age の値を取り出し、「私の名前は〜です年齢は〜歳です」と表示してください

  # {name: "satou", age: 22}
  # {name: "yamada", age: 12}s
  # {name: "takahashi", age: 32}
  # {name: "nakamura", age: 41}

  def q20
    list = [
      {name: "satou", age: 22},
      {name: "yamada", age: 12},
      {name: "takahashi", age: 32},
      {name: "nakamura", age: 41}
      ]

    list.each {|user| puts "「私の名前は#{user[:name]}です年齢は#{user[:age]}歳です」"}
  end
  #-------------------------------------------------

  #----------------------完了------------------------
  # Q21. 以下の配列から全てのキーを取り出してターミナルに出力してください

  # {name: "satou", age: 33, address: "saitama", hobby: "soccer", email: "hoge@fuga.com"}

  def q21
    has = {name: "satou", age: 33, address: "saitama", hobby: "soccer", email: "hoge@fuga.com"}

    puts has.keys
  end
  #-------------------------------------------------

  #----------------------完了------------------------
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
  #--------------------------------------------------

  #----------------------完了------------------------
  # Q23. 以下のハッシュをキー、バリュー含め全て配列に変換してください

  # {name: "satou", age: 33, address: "saitama", hobby: "soccer", email: "hoge@fuga.com"}
  # 変換後の配列
  # [:name, "satou", :age, 33, :address, "saitama", :hobby, "soccer", :email, "hoge@fuga.com"]

  def q23
    has = {name: "satou", age: 33, address: "saitama", hobby: "soccer", email: "hoge@fuga.com"}

    p has.to_a.flatten
  end
  #--------------------------------------------------

  #----------------------完了------------------------
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
  #--------------------------------------------------

  #----------------------完了------------------------
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
      puts (user.has_key?(key) ? "あります" : "ありません")
    end
  end
  #--------------------------------------------------

  #----------------------完了------------------------
  # Q26. 以下の２つのハッシュを合体させた新しいハッシュを作成してください

  # {C: "printf", COBOL: "DISPLAY", Go: "fmt.Print", Java: "System.out.println"}
  # {JavaScript: "console.log", R: "print", Ruby: "puts"}

  def q26
    h1 = {C: "printf", COBOL: "DISPLAY", Go: "fmt.Print", Java: "System.out.println"}
    h2 = {JavaScript: "console.log", R: "print", Ruby: "puts"}

    p h1.merge(h2)
  end
  #--------------------------------------------------

  #----------------------完了-------------------------
  # Q27. 名前、年齢、性別、管理者権限の情報を持ったユーザークラスを定義して
  #      インスタンスを作成してください管理者権限の有無はtrueかfalseで表してください

  # Q28.作成した Userクラス からインスタンスを生成、 infoメソッド を実行し、
  #     目標の出力になるようにコードを書き足してください


  class User_q27
    attr_reader :name, :age, :gender, :admin

    def initialize(**params)
      @name = params[:name]
      @age = params[:age]
      @gender = params[:gender]
      @admin = params[:admin]
    end

    def info
      admin = @admin ? "有り" : "無し"

      puts <<~INFO
      名前：#{@name}
      年齢：#{@age}
      性別：#{@gender}
      管理者権限：#{admin}
      INFO
    end

  end

  def q28
    user1 = User_q27.new(name: "神里", age: 32, gender: "男", admin: true)
    user2 = User_q27.new(name: "あじー", age: 32, gender: "男", admin: false)

    user1.info
    puts "---------------"
    user2.info
  end
  #--------------------------------------------------

  #----------------------完了-------------------------
  # Q29.次のようなコードを書いて、目標の出力になるようなUserクラスを定義してください
  # 今回は attr_accessor attr_reader attr_writer は使用しないでください
  
  class User_q29
    def initialize(name:)
      @name = name
    end
  
    def name
      @name
    end
  
    def name=(name)
      @name = name
    end
  end
  
  def q29
    user = User_q29.new(name: 'あじー')
    puts user.name
    user.name = 'tanakin'
    puts user.name
  end
  #--------------------------------------------------

  #----------------------完了-------------------------
  # Q30. 以下のようなコードを書いて、期待した出力になるようなUserクラスを定義してください

  class User_q30
    attr_reader :name, :age
  
    def initialize(**params)
      @name = params[:name]
      @age = params[:age]
    end
  
    def introduce
      if @age >= 20
        puts "こんにちは、#{@name}と申します宜しくお願いいたします"
      else
        puts "はいさいまいど〜、#{@name}です！！！"
      end
    end
  end
  
  def q30
    user = User_q30.new(name: "あじー", age: 32)
    puts user.introduce
    user2 = User_q30.new(name: "ゆたぼん", age: 10)
    puts user2.introduce
  end
  #--------------------------------------------------

  #----------------------完了-------------------------
  # Q31. 以下のようなコードを書くとエラーが出たので期待する出力結果となるように修正してください

  class Item
    attr_reader :name

    def initialize(name:)
      @name = name
    end
  end

  def q31
    book = Item.new(name: "ゼロ秒思考")
    puts book.name
  end
  #--------------------------------------------------

  #----------------------完了-------------------------
  # Q32.次の仕様を満たすコードを書いてください
  # * 名前、年齢の情報を持った「ユーザークラス」を定義してください
  # * 名前、入場料金の情報を持った「動物園クラス」を定義してください
  # * 入場料金は、幼児(05歳)、子供(612歳)、成人(1364歳)、シニア(65120歳)の4パターン設定してください(金額はお任せします)
  # * 動物園クラスに、ユーザークラスから生成されたインスタンスを受け取って、受けとったユーザーの年齢に応じて、入場料金を返す
  # 「check_entry_feeメソッド」を定義してください(年齢として無効な値が渡った場合は「無効な値です」と返してください)

  class User_q32
    attr_reader :name, :age

    def initialize(name:, age:)
      @name = name
      @age = age
    end
  end

  class Zoo
    attr_reader :name, :price_infant, :price_child, :price_adult, :price_senior

    def initialize(**params)
      @name = params[:name]
      @price_baby = params[:price_infant]
      @price_child = params[:price_child]
      @price_adult = params[:price_adult]
      @price_senior = params[:price_senior]
    end

    def check_entry_fee(user_age)
      case user_age
      when 0..5
        puts "料金は#{@price_infant}円です"
      when 6..12
        puts "料金は#{@price_child}円です"
      when 13..64
        puts "料金は#{@price_adult}円です"
      when 65..120
        puts "料金は#{@price_senior}円です"
      else
        puts "無効な値です"
      end
    end

  end

  def q32
    user1 = User_q32.new(name: 'satoshi', age: 7)
    user2 = User_q32.new(name: 'yoshiki', age: 130)
    zoo = Zoo.new(name: 'Osaka_zoo', price_infant: 400, price_child: 800, price_adult: 1200, price_senior: 1000)

    zoo.check_entry_fee(user1.age)
    zoo.check_entry_fee(user2.age)
  end
  #--------------------------------------------------

  #-----------------------完了------------------------
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

  #-----------------------修正------------------------
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

  #-----------------------修正------------------------

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
  #--------------------------------------------------

  #-----------------------修正------------------------
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

  #-----------------------修正------------------------
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


end




