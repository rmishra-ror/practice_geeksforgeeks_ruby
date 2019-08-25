# frozen_string_literal: true

# ref: https://practice.geeksforgeeks.org/problems/collection-of-pens/0
# Everyone have some habits to collect one thing or the other.
# Harshit also has the craze to collect pens but in 3 piles.
# In first pile, he collected A pens and in the second pile,
# he collected B pens but in the third and the last pile ,
# he think of something different.
# He decided to collect only the minimum number of pens in third pile
# so that the sum of pens in the three piles will give him a prime number.
# Note: there should be atleast one pen in the third pile.

# Input:

# First line contains the test cases,t. Then T test cases follow.
# Each line of the test case two space separated values A,B
# ie. number of pens in first and second pile respectively.

# Output:
# Print the minimum number of pens that should be there in the third pile
# so that sum of all three piles produces a prime number.

# Constraints:
# 1<=T<=30
# 1<=A<=1000
# 1<=B<=1000

# Example:

# Input:
# 2
# 1 3
# 4 3

# Output
# 1
# 4

# Explanation:

# In first case,Harshit put one pen in first pile and 3 pens in second pile
# which give 4 as a sum.So if he adds one pen in the third pile,
# the sum will yield a prime number ie.5
# Therefore the answer is 1.
# Similarly for other test case
class Integer
  def prime?
    return if self == 1
    return true if self == 2
    return if (self % 2).zero?

    (3..self / 2).none? { |i| (self % i).zero? }
  end
end

# PenCollection
class PenCollection
  def self.pens_in_third_pile(first_pile, second_pile)
    pen_sum = first_pile + second_pile
    i = 1
    loop do
      return i if (pen_sum + i).prime?

      i += 1
    end
  end

  def self.process
    t = gets.chomp.to_i # No of test cases
    while t.positive?
      first_pile, second_pile = gets.split.map(&:to_i)
      puts pens_in_third_pile(first_pile, second_pile)
      t -= 1
    end
  end
end
# PenCollection.process # uncomment to run program
