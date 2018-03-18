require_relative '../lib/card'

describe Card do
  it "has a card with a rank and suit" do
    card = Card.new("K", "♦")

    expect(card.rank).to eq("K")
    expect(card.suit).to eq("♦")
  end
end
