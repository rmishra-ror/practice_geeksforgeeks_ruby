# frozen_string_literal: true

# Given an integer N, find the number of ways we can choose 3 numbers from
# {1,2,3...N} such that their sum is even.

# Input:
# The first line of the test case contains an integer T
# denoting number of test cases. Following T line contains an integer N each.

# Output:
# Print the answer under modulo 109+7.

# Constraints:

# 1 <= T <= 100
# 3 <= N <= 106

# Example:-
# Input:
# 2
# 3
# 4
# Output:
# 1
# 2

# Explanation:
# Testcase 1:For N=3 the only possible combination is {1,2,3}.So,
# the output is 1.
class Array
  def even_sum?
    inject(0) { |sum, e| sum + e }.even?
  end
end

# EvenSum
class EvenSum
  def self.combinations(num)
    count = 0
    (1..num).to_a.combination(3).each do |comb|
      count += 1 if comb.even_sum?
    end
    count
  end

  def self.process
    t = gets.chomp.to_i # No of test cases
    while t.positive?
      num = gets.to_i
      puts combinations(num)
      t -= 1
    end
  end
end
# EvenSum.process # uncomment to run program
