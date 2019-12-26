# Q32.次の仕様を満たすコードを書いてください
# * 名前、年齢の情報を持った「ユーザークラス」を定義してください
# * 名前、入場料金の情報を持った「動物園クラス」を定義してください
# * 入場料金は、幼児(05歳)、子供(612歳)、成人(1364歳)、シニア(65120歳)の4パターン設定してください(金額はお任せします)
# * 動物園クラスに、ユーザークラスから生成されたインスタンスを受け取って、受けとったユーザーの年齢に応じて、入場料金を返す
# 「check_entry_feeメソッド」を定義してください(年齢として無効な値が渡った場合は「無効な値です」と返してください)

class User
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
  user1 = User.new(name: 'satoshi', age: 7)
  user2 = User.new(name: 'yoshiki', age: 130)
  zoo = Zoo.new(name: 'Osaka_zoo', price_infant: 400, price_child: 800, price_adult: 1200, price_senior: 1000)

  zoo.check_entry_fee(user1.age)
  zoo.check_entry_fee(user2.age)
end
