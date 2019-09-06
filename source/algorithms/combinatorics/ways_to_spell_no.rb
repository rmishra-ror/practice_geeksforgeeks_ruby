# frozen_string_literal: true

# Count ways to spell a number with repeated digits

# Given a string that contains digits of a number.
# The number may contain many same continuous digits in it.
# The task is to count number of ways to spell the number.
# For example, consider 8884441100, one can spell it simply as
# triple eight triple four double two and double zero.
# One can also spell as double eight, eight, four, double four,
# two, two, double zero.

# Examples :

# Input :  num = 100
# Output : 2
# The number 100 has only 2 possibilities,
# 1) one zero zero
# 2) one double zero.

# Input : num = 11112
# Output: 8
# 1 1 1 1 2, 11 1 1 2, 1 1 11 2, 1 11 1 2
# 11 11 2, 1 111 2, 111 1 2, 1111 2

# Input : num = 8884441100
# Output: 64

# Input : num = 12345
# Output: 1

# Input : num = 11111
# Output: 16
require 'pry'
class String
  def numeric?
    !Integer(self).nil?
  rescue StandardError
    false
  end
end

# Number of ways to spell
class WaysToSpell
  attr_accessor :length, :numbers, :loc, :result

  def initialize(num)
    @numbers = num.split('')
    @length = numbers.length
    @loc = 0
    @result = 1
  end

  def ways_count
    until loc > length
      count = 0
      numbers.each do
        next unless (loc < length - 1) && (numbers[loc + 1] == numbers[loc])
        count += 1
        self.loc += 1
      end
      self.result *= (2**count)
      self.loc += 1
    end
    self.result
  end

  def self.process
    t = gets.chomp.to_i # No of test cases
    outputs = []
    while t.positive?
      puts 'Enter the number'
      num = gets.chomp
      outputs << WaysToSpell.new(num).ways_count if num.numeric?
      t -= 1
    end
    outputs.map { |o| puts o }
  end
end

WaysToSpell.process # uncomment to run program
