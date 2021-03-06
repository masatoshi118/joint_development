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