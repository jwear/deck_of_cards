require_relative '../lib/card'
require_relative '../lib/deck'

describe Deck do
  before do
   @deck = Deck.new
  end

  it "has 52 cards" do
    expect(@deck.cards.size).to eq(52)
  end

  it "draws a card" do
    card = @deck.draw

    expect(@deck.cards.size).to eq(51)
    expect(card).to be_an_instance_of(Card)
  end

  it "draws a card until the deck is empty" do
    52.times do
      expect(@deck).not_to be_empty
      @deck.draw
    end

    expect(@deck).to be_empty
  end

  it "shuffles the deck" do
    original_cards = @deck.cards.dup
    @deck.shuffle!

    expect(original_cards).not_to eq(@deck.cards)
  end
end
