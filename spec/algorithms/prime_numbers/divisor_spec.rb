# frozen_string_literal: true

RSpec.describe 'Divisor' do
  it 'should return divisor list' do
    expect(Divisor.divisor_list(10)).to eq([1, 2, 5, 10])
    expect(Divisor.divisor_list(54)).to eq([1, 2, 3, 6, 9, 18, 27, 54])
  end

  it 'should return summation of divisor list' do
    expect(Divisor.divisor_summation(10)).to eq(18)
    expect(Divisor.divisor_summation(54)).to eq(120)
  end

  it 'should return summation of divisors of all the divisors' do
    expect(Divisor.summation_of_divisors_of_all_the_divisors(10)).to eq(28)
    expect(Divisor.summation_of_divisors_of_all_the_divisors(54)).to eq(232)
  end
end
