require_relative '../lib/deck'

describe Deck do

  it "has 52 cards" do
    deck = Deck.new

    expect(deck.cards.size).to eq(52)
  end

  it "draws a card" do
    deck = Deck.new

    expect(deck.draw).to eq(51)
  end

end
