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