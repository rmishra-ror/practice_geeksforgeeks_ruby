# frozen_string_literal: true

RSpec.describe 'Count ways to spell a number with repeated digits ' do
  it 'should return true if given input is numeric' do
    expect('11116'.numeric?).to be_truthy
    expect('12345'.numeric?).to be_truthy
    expect('111mdj'.numeric?).to be_falsey
    expect('gdhdkk'.numeric?).to be_falsey
  end

  it 'should return count for every possible ways to spell a number ' do
    expect(WaysToSpell.ways_count('8884441100')).to eq(64)
    expect(WaysToSpell.ways_count('12345')).to eq(1)
    expect(WaysToSpell.ways_count('11111')).to eq(16)
    expect(WaysToSpell.ways_count('11112')).to eq(8)
  end
end
