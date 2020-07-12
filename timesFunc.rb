def timesFunc(number)
  if number == 0
    return 1
  end
  return number * timesFunc(number - 1)
end
p timesFunc(5)
timesFunc(1)を呼び出し => 1 * 1
timesFunc(2)を呼び出し => 2 * 1 * 1
timesFunc(3)を呼び出し => 3 * 2 * 1 * 1
timesFunc(4)を呼び出し => 4 * 3 * 2 * 1 * 1
timesFunc(5)を呼び出し => 5 * 4 * 3 * 2 * 1 * 1
結果 => 120

# このような書き方をしても良い。
def timesFunc(number)
  return 1 if number == 0 # 短くまとめる
  return number * timesFunc(number - 1)
end
p timesFunc(5)
