require 'benchmark'
require './selection/bubbleSearchFunc'
require './selection/selectionSortFunc'


class Selection
  

  include BSF
  include SSF

  def selectionSortFunc(n)
    p ssfAsc(n)
    p ssfDesc(n)
    puts "//////////////////////////"
    return "選択ソートです"
  end

  def bubbleSearchFunc(n,f)
    if f == 1
      p BsfAsc(n)
      p BsfDesc(n)
      puts "//////////////////////////"
      puts "バブルソートです"
    end
      p BsfAsc_for(n)
      p BsfDesc_for(n)
      puts "//////////////////////////"
      puts "for文を使ったバブルソートです"
  end

end

numbers = (1..100).to_a.shuffle

selection3 = Selection.new
Bsf_f = selection3.bubbleSearchFunc(numbers,0)
Bsf = selection3.bubbleSearchFunc(numbers,1)
Ssf = selection3.selectionSortFunc(numbers)

# puts Bsf
puts Bsf
