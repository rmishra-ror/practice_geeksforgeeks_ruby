# frozen_string_literal: true

RSpec.describe 'PrimeNumberOfSetBit' do
  it 'should return set bits count of number' do
    expect(1.set_bits_count).to eq(1)
    expect(2.set_bits_count).to eq(1)
    expect(3.set_bits_count).to eq(2)
    expect(4.set_bits_count).to eq(1)
    expect(7.set_bits_count).to eq(3)
  end

  it 'should return true if no is prime' do
    expect(2.prime?).to be_truthy
    expect(4.prime?).to be_falsey
    expect(7.prime?).to be_truthy
  end

  it 'should return the prime count of set bits within range' do
    expect(PrimeNumberOfSetBit.prime_count_in_range(6, 10)).to eq(4)
    expect(PrimeNumberOfSetBit.prime_count_in_range(10, 15)).to eq(5)
  end
end
