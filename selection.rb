require 'benchmark'
require './selection/bubbleSearchFunc'
require './selection/selectionSortFunc'


class Selection
  

  include BSF
  include SSF

  def Ssf(n)
    p ssfAsc(n)
    p ssfDesc(n)
    puts "//////////////////////////"
    return "選択ソートです"
  end

  def Bsf(n,y)
    if y == 1
      p bsfAsc(n)
      p bsfDesc(n)
      puts "//////////////////////////"
      puts "バブルソートです"
    else
      p bsfAsc_for(n)
      p bsfDesc_for(n)
      puts "//////////////////////////"
      puts"for文を使ったバブルソートです"
      return 
    end
  end
end

ns = (1..100).to_a.shuffle
selection = Selection.new


selection.Bsf(ns,0)