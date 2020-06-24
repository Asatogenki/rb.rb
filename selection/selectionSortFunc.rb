module SSF

  def ssfAsc(value)
    i = 0
    while i < value.length
      minNumber = i
      staNumber = i + 1
      while staNumber < value.length
        if value[staNumber] < value[minNumber]
          minNumber = staNumber
        end
        staNumber += 1
      end
      value[i],value[minNumber] = value[minNumber],value[i]
      i += 1
    end
    return value
  end

  def ssfDesc(value)
    i = 0
    while i < value.length
      maxNumber = i # 初期値
      staNumber = i + 1 # 初期値
      # 最大値を検索する処理
      while staNumber < value.length
        if value[staNumber] > value[maxNumber]
          maxNumber = staNumber
        end
        staNumber += 1
      end
      # 最大値を並びかえる処理
      value[i], value[maxNumber] = value[maxNumber], value[i]
      i += 1
    end
    return value
  end
end