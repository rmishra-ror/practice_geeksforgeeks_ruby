# frozen_string_literal: true

RSpec.describe 'LeastPrimeFactor' do
  it 'should return prime_factor 1 if no is 1' do
    expect(1.prime_factor).to eq(1)
  end

  it 'should return prime_factor 2 if no is even' do
    expect(2.prime_factor).to eq(2)
    expect(4.prime_factor).to eq(2)
    expect(1024.prime_factor).to eq(2)
  end

  it 'should return least prime_factor of a no' do
    expect(6.prime_factor).to eq(2)
    expect(9.prime_factor).to eq(3)
    expect(17.prime_factor).to eq(17)
  end

  it 'should return list of all prime_factor form 1..n' do
    expect(LeastPrimeFactor.prime_factors(4)).to eq('1 2 3 2')
    expect(LeastPrimeFactor.prime_factors(6)).to eq('1 2 3 2 5 2')
  end
end
