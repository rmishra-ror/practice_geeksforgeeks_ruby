# frozen_string_literal: true

RSpec.describe 'PenCollection' do
  it 'should return pens in third pile' do
    expect(PenCollection.pens_in_third_pile(1, 3)).to eq(1)
    expect(PenCollection.pens_in_third_pile(4, 3)).to eq(4)
  end
end
