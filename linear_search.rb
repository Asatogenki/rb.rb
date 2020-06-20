require 'benchmark'

def linearSearchFunc(numbers,value)
  i = 0
  while i < numbers.length
    if numbers[i] == value
      return i
    end
    i += 1
  end
  return "None"
end

numbers = [1, 3, 5, 11, 12, 13, 17, 22, 25, 28]
targetNumber = 12
result = Benchmark.realtime do
  p linearSearchFunc(numbers, targetNumber)
end

puts "#{result}s"