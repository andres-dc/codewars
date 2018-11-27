# Tribonacci Sequence
# https://www.codewars.com/kata/tribonacci-sequence/ruby

def tribonacci(init, num)
  (3...num).each do |i|
    init[i] = init[i - 3] + init[i - 2] + init[i - 1]
  end
  init.slice(0, num)
end

tribonacci([1, 1, 1], 10) # [1, 1, 1, 3, 5, 9, 17, 31, 57, 105]
tribonacci([0, 0, 1], 10) # [0, 0, 1, 1, 2, 4, 7, 13, 24, 44]
tribonacci([0, 1, 1], 10) # [0, 1, 1, 2, 4, 7, 13, 24, 44, 81]
tribonacci([1, 0, 0], 10) # [1, 0, 0, 1, 1, 2, 4, 7, 13, 24]
tribonacci([0, 0, 0], 10) # [0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
tribonacci([1, 2, 3], 10) # [1, 2, 3, 6, 11, 20, 37, 68, 125, 230]
tribonacci([3, 2, 1], 10) # [3, 2, 1, 6, 9, 16, 31, 56, 103, 190]
tribonacci([1, 1, 1], 1) # [1]
tribonacci([300, 200, 100], 0) # []
