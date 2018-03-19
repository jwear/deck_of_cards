require_relative '../lib/card'
require_relative '../lib/deck'

describe Deck do

  it "has 52 cards" do
    deck = Deck.new

    expect(deck.cards.size).to eq(52)
  end

  it "draws a card" do
    deck = Deck.new
    card = deck.draw

    expect(deck.cards.size).to eq(51)
    expect(card).to be_an_instance_of(Card)
  end

  it "draws a card until the deck is empty" do
    deck = Deck.new

    52.times do
      expect(deck).not_to be_empty
      deck.draw
    end

    expect(deck).to be_empty
  end
end
