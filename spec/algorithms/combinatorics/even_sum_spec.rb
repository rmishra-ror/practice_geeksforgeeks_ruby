# frozen_string_literal: true

RSpec.describe 'Three Number Even Sum' do
  it 'should return true if array summation is even' do
    expect([1, 2, 3].even_sum?).to be_truthy
    expect([1, 2, 4].even_sum?).to be_falsey
  end

  it 'should return even summation count' do
    expect(EvenSum.combinations(3)).to eq(1)
    expect(EvenSum.combinations(4)).to eq(2)
  end
end
