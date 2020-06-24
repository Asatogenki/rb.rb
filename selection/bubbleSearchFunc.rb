module BSF
  def BsfAsc(value)
    count = value.length
    i = 0
    while i < count
      #p value
      j = 1
      while j < count - i
        if value[j-1] > value[j]
          value[j-1],value[j] = value[j],value[j-1]
        end
        j += 1
      end
      i += 1
    end
    return value
  end


  def BsfDesc(value)
    count = value.length
    i = 0
    while i < count
      #p value
      j = 1
      while j < count - i
        if value[j-1] < value[j] # 値を比較する
          value[j], value[j-1] = value[j-1], value[j] # 値を入れ替える
        end
        j += 1
      end
      i += 1
    end
    return value
  end

  def BsfAsc_for(value)
    count = value.length - 1
    for i in 0..count
      #p value
      for j in 1..(count - i)
        if value[j-1] > value[j] # 値を比較する
          value[j-1], value[j] = value[j], value[j-1] # 値を入れ替える
        end
      end
    end
    return value
  end

  def BsfDesc_for(value)
    count = value.length - 1
    for i in 0..count
      #p value
      for j in 1..(count - i)
        if value[j-1] < value[j] # 値を比較する
          value[j-1], value[j] = value[j], value[j-1] # 値を入れ替える
        end
      end
    end
    return value
  end
end