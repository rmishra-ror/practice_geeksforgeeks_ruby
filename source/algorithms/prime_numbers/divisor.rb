# frozen_string_literal: true

# ref: https://practice.geeksforgeeks.org/problems/find-sum-of-divisors/0
# Given a natural number n,
# the task is to find sum of divisors of all the divisors of n.
# Examples:

# Input : n = 54
# Output : 232
# Divisors of 54 = 1, 2, 3, 6, 9, 18, 27, 54.
# Sum of divisors of 1, 2, 3, 6, 9, 18, 27, 54
# are 1, 3, 4, 12, 13, 39, 40, 120 respectively.
# Sum of divisors of all the divisors of 54 =
# 1 + 3 + 4 + 12 + 13 + 39 + 40 + 120 = 232.

# Input : n = 10
# Output : 28
# Divisors of 10 are 1, 2, 5, 10
# Sums of divisors of divisors are
# 1, 3, 6, 18.
# Overall sum = 1 + 3 + 6 + 18 = 28
# Input:
# The first line of input contains an integer T denoting the no of test cases.
# Then T test cases follow. Each test case contains an integer n.

# Output:
# For each test case in a new line print the required output.

# Constraints:
# 1<=T<=100
# 1<=n<=100

# Example:
# Input:
# 2
# 54
# 10
# Output:
# 232
# 28
class Divisor
  def self.divisor_list(num)
    (1..num / 2).select { |i| (num % i).zero? } + [num]
  end

  def self.divisor_summation(num)
    divisor_list(num).sum
  end

  def self.summation_of_divisors_of_all_the_divisors(num)
    divisor_list(num).inject(0) { |s, i| s + divisor_summation(i) }
  end

  def self.process
    t = gets.chomp.to_i # No of test cases
    while t.positive?
      n = gets.chomp.to_i
      puts summation_of_divisors_of_all_the_divisors(n)
      t -= 1
    end
  end
end
# Divisor.process # uncomment to run the program
