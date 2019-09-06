# frozen_string_literal: true

# You are given an equation of the form x1+x2+...+xN=K.
# You need to find the total number of
# positive integral solutions of this equation.

# Input:
# The first line of the input contains an integer T, denoting
# the number of test cases. Then T test case follows.
# Each testcase contains a single line that denotes the equation.

# Output:

# Print the total number of positive integral solutions.

# Constraints:
# 1<=T<=100
# 1<=K<=25
# 2<=N<=10

# Example:

# Input:
# 4
# a+b=5
# a+b=1
# a+b+c=10
# a+b+c+d+e=15

# Output:
# 4
# 0
# 36
# 1001
class String
  def lhs
    split('=').first
  end

  def rhs
    split('=').last
  end
end

# Equation
class Equation
  attr_accessor :equation, :variables

  def initialize(equa)
    @equation = equa
    @variables = equa.lhs.split('+')
    var_define(@variables)
  end

  def permutation
    count = 0
    length = variables.length
    permu = (1..equation.rhs.to_i - 1).to_a.repeated_permutation(length)
    permu.each do |values|
      (0..length - 1).each do |i|
        send("#{variables[i]}=".to_sym, values[i].to_i)
      end
      count += 1 if eval(equation.lhs) == equation.rhs.to_i
    end
    count
  end

  def var_define(variables)
    variables.map(&:to_sym).each do |var|
      singleton_class.class_eval { attr_accessor var }
    end
  end

  def self.process
    puts 'Enter number of test cases'
    t = gets.chomp.to_i # No of test cases
    outputs = []
    while t.positive?
      outputs << Equation.new(gets.chomp).permutation
      t -= 1
    end
    outputs.map { |o| puts o }
  end
end

# Equation.process # uncomment to run program
