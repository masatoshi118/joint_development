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