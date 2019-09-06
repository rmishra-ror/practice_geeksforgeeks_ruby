# frozen_string_literal: true

RSpec.describe 'Number of positive integral solutions ' do
  it 'should return equation if String lhs method is called' do
    expect('a+b+c=10'.lhs).to eq('a+b+c')
    expect('a+b+c+d=20'.lhs).to eq('a+b+c+d')
  end

  it 'should return integer value if String rhs method is called' do
    expect('a+b+c=10'.rhs).to eq('10')
    expect('a+b+c+d=20'.rhs).to eq('20')
  end

  it 'should return number of positive integral solution count' do
    expect(Equation.new('a+b+c=10').permutation).to eq(36)
    expect(Equation.new('a+b+c+d+e=15').permutation).to eq(1001)
  end
end
