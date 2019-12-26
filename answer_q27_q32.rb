#--------------------レビュー待ち---------------------
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
      puts <<~INFO
      名前：#{@name}
      年齢：#{@age}
      性別：#{@gender}
      INFO
      puts (@admin? "管理者権限：有り" : "管理者権限：無し")
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

  #--------------------レビュー待ち---------------------
  # Q29.次のようなコードを書いて、目標の出力になるようなUserクラスを定義してください
  # 今回は attr_accessor attr_reader attr_writer は使用しないでください
  
  class User_q29
    def initialize(name: name)
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

  #--------------------レビュー待ち---------------------
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

  #--------------------レビュー待ち---------------------
  # Q31. 以下のようなコードを書くとエラーが出たので期待する出力結果となるように修正してください

  class Item
    attr_reader :name

    def initialize(name: name)
      @name = name
    end
  end

  def q31
    book = Item.new(name: "ゼロ秒思考")
    puts book.name
  end
  #--------------------------------------------------

  #--------------------レビュー待ち---------------------
  # Q32.次の仕様を満たすコードを書いてください
  # * 名前、年齢の情報を持った「ユーザークラス」を定義してください
  # * 名前、入場料金の情報を持った「動物園クラス」を定義してください
  # * 入場料金は、幼児(05歳)、子供(612歳)、成人(1364歳)、シニア(65120歳)の4パターン設定してください(金額はお任せします)
  # * 動物園クラスに、ユーザークラスから生成されたインスタンスを受け取って、受けとったユーザーの年齢に応じて、入場料金を返す
  # 「check_entry_feeメソッド」を定義してください(年齢として無効な値が渡った場合は「無効な値です」と返してください)

  class User_q32
    attr_reader :name, :age

    def initialize(name: name, age: age)
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