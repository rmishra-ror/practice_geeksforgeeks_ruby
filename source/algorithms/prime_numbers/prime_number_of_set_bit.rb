# frozen_string_literal: true

# ref: https://practice.geeksforgeeks.org/problems/prime-number-of-set-bits/0
# Given two integers L and R,
# write a program that finds the count of
# numbers having prime number of set bits in
# their binary representation in the range [L, R].

# Input:
# The first line consists of an integer T i.e number of test cases.
# The first and only line of each test case consists of two integers L and R.

# Output:
# Print the required output.

# Constraints:
# 1<=T<=100
# 1<=L<=R<=100000

# Example:
# Input:
# 2
# 6 10
# 10 15

# Output:
# 4
# 5
class Integer
  def set_bits_count
    n = self
    count = 0
    while n.positive?
      count += 1 if n.odd?
      n /= 2
    end
    count
  end

  def prime?
    return if self == 1
    return true if self == 2
    return if (self % 2).zero?

    (3..self / 2).none? { |i| (self % i).zero? }
  end
end

# PrimeNumberOfSetBit
class PrimeNumberOfSetBit
  def self.prime_count_in_range(left, right)
    (left..right).inject(0) do |c, n|
      c + (n.set_bits_count.prime? ? 1 : 0)
    end
  end

  def self.process
    t = gets.chomp.to_i # No of test cases
    while t.positive?
      l, r = gets.split.map(&:to_i)
      puts prime_count_in_range(l, r)
      t -= 1
    end
  end
end
# PrimeNumberOfSetBit.process  # uncomment to run the program
