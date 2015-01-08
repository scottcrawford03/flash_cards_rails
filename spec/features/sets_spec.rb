require 'rails_helper'

describe 'sets' do

  before(:each) do
    @set = CardSet.create(category: 'Capitals')
    visit card_sets_path
  end

  it 'can visit sets index page' do
    expect(page).to have_content(@set.category)
  end

  it 'can see all cards for one set' do
    card1 = @set.cards.create(question: 'Colorado', answer: 'Denver')
    card2 = @set.cards.create(question: 'Nebraska', answer: 'Lincoln')
    first(:link, 'Cards').click
    expect(current_path).to eq(card_set_path(@set))
    expect(page).to have_content(card1.id)
    expect(page).to have_content(card2.id)
  end

  it 'can see the first card from a set' do
    card1 = @set.cards.create(question: 'Colorado', answer: 'Denver')
    card2 = @set.cards.create(question: 'Nebraska', answer: 'Lincoln')
    first(:link, 'Cards').click
    first(:link, 'Display Card').click
    expect(current_path).to eq(card_set_card_path(card1))
    expect(page).to have_content(card1.question)
  end
end
