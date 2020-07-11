# 基準値を選びデータを大小に分ける
# 分けたデータに対し繰り返し同じ処理を実行する

def quickSortFunc(numbers)
  # (3)分けたデータに対し繰り返し処理を実行(条件式)
  if numbers.length < 2
    return numbers
  end
  # return numbers if numbers.length < 2
  # (1)先頭の要素を基準値にする
  targetNumber = numbers.shift
  # (2)データを大小に分ける
  smallData = []
  largeData = []
  numbers.each do |number|
    if number < targetNumber
      smallData << number
    else
      largeData << number
    end
  end
  #p smallData => 一回目の処理結果 [2, 1, 3]
  #p largeData => 一回目の処理結果 [8, 6, 5, 9, 7]
  # (4)分けたデータに対し繰り返し処理を実行(再帰処理)
  quickSortFunc(smallData) + [targetNumber] + quickSortFunc(largeData)
end
numbers = [4, 8, 6, 5, 2, 1, 3, 9, 7]
p quickSortFunc(numbers)
=>[1, 2, 3, 4, 5, 6, 7, 8, 9]
