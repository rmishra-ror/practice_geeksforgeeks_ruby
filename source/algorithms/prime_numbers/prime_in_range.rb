# frozen_string_literal: true

# ref: https://practice.geeksforgeeks.org/problems/find-prime-numbers-in-a-range/0
# Generate all prime numbers between two given numbers.

# Input:

# The first line of the input contains an integer T
# T denoting the number of test cases.
# Then T test cases follow. Each test case consists of
# a single line containing two space separated integers m and n.
# Output:

# For every test case print all prime numbers p
# such that m <= p <= n, space separated.
# Separate the answers for each test case by a new line.

# Constraints:
# 1<=T<=60
# 1 <= m <= n <= 100000,
# n - m <= 100000

# Example:

# Input:

# 2

# 1 10

# 3 5

# Output:

# 2 3 5 7

# 3 5
class Integer
  def prime?
    return if self == 1
    return true if self == 2
    return if (self % 2).zero?

    (3..self / 2).none? { |i| (self % i).zero? }
  end
end

# PrimeNumberOfSetBit
class PrimeInRange
  def self.prime_list(left, right)
    (left..right).inject('') do |c, n|
      c + (n.prime? ? "#{n} " : '')
    end.strip
  end

  def self.process
    t = gets.chomp.to_i # No of test cases
    while t.positive?
      l, r = gets.split.map(&:to_i)
      puts prime_list(l, r)
      t -= 1
    end
  end
end
# PrimeInRange.process # uncomment to run the program
