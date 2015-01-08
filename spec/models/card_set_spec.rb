require 'rails_helper'

RSpec.describe CardSet, :type => :model do
  let(:set) { CardSet.create(category: 'Capitals') }

  it 'is valid' do
    expect(set).to be_valid
  end

  it 'is not valid without category' do
    set.category = nil
    expect(set).to_not be_valid
  end
end
