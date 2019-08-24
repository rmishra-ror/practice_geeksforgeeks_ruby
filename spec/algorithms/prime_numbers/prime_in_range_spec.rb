# frozen_string_literal: true

RSpec.describe 'PrimeInRange' do
  it 'should return the prime list within range' do
    expect(PrimeInRange.prime_list(1, 10)).to eq('2 3 5 7')
    expect(PrimeInRange.prime_list(3, 5)).to eq('3 5')
  end
end
