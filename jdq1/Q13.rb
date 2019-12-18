# Q13. 以下の配列から奇数だけを選んだ新しい配列を作成してください
# [1, 2, 3, 4, 5]

def q13
  numbers = [1, 2, 3, 4, 5]

  p numbers.select(&:odd?)
end