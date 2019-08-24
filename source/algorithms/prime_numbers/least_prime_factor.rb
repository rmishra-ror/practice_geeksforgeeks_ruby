# frozen_string_literal: true

# ref:  https://practice.geeksforgeeks.org/problems/least-prime-factor/0
# Given a number N, print least prime factors for all numbers from 1 to N.
# The least prime factor of an integer N is the smallest
# prime number that divides it.
# The least prime factor of all even numbers is 2.
# A prime number is its own least prime factor
# (as well as its own greatest prime factor).
# Note : 1 needs to be printed for 1.

# Input: N = 6
# Output: 1 2 3 2 5 2
# The first line of input contains an integer T
# denoting the number of test cases.
# The first line of each test case is N.

# Output:
# Print least prime factors separated by space

# Constraints:
# 1 <= T <= 200
# 2 <= N <= 1000

# Example:
# Input:
# 2
# 6
# 10

# Output:
# 1 2 3 2 5 2
# 1 2 3 2 5 2 7 2 3 2
class Integer
  def prime_factor
    return 1 if self == 1
    return 2 if even?

    (3..self / 2).each do |i|
      return i if (self % i).zero?
    end
    self
  end
end
# LeastPrimeFactor return primefactors of no n
class LeastPrimeFactor
  def self.prime_factors(num)
    (1..num).map(&:prime_factor).join(' ')
  end

  def self.process
    t = gets.chomp.to_i # No of test cases
    while t.positive?
      n = gets.chomp.to_i
      puts prime_factors(n)
      t -= 1
    end
  end
end
# LeastPrimeFactor.process # uncomment to run the program
