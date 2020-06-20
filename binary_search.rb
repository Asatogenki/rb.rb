require 'benchmark'
def binarySearchFunc(numbers,value)
  head = 0
  tail = numbers.length - 1
  while head <= tail
    center = ((head + tail)/2.0).round
    if numbers[center] == value
      return center
    elsif numbers[center] < value
      head = center + 1
    else
      tail = center - 1
    end
  end
  return "None"
end

numbers = [1, 3, 5, 11, 12, 13, 17, 22, 25, 28]
targetNumber = 12

result = Benchmark.realtime do
  p binarySearchFunc(numbers, targetNumber)
end

puts "#{result}s" 