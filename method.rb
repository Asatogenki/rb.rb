# 特定の処理を固めた塊

def num_times(number)
  new_number = number + 2
  new_number = new_number * 5
  new_number
end

# この文を3倍に変更しようとすると手間がかかるなのでメソッド大事

p 1*2
p 2*2
p 3*2
p 4*2

# メソッドで処理をまとめるとこんなにコンパクトになる

def num_times(number)
  number * 2   #ここの数字を変更すれば倍率を一括で変えることができる。
end

p num_times(1)
p num_times(2)
p num_times(3)
p num_times(4)

# メソッドの基本的な形(引数あり)

# def メソッドの名前(メソッドの引数1、メソッドの引数2、…)
#   処理1
#   処理2
#   …
#   end

# メソッドの基本な形（引数なし）
# def dog
#   "wooonn!!"
# end

# 引数を指定すると複数のことを一つのメソッドでできる。
def pets(*pets)
  p "私のペットは"
pets.each {|pet| p pet}
  p "です"
end
pets("cat","dog","pig","mantis")

#
# def dog
#   "Woof!"
# end
