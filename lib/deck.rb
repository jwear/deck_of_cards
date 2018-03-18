require_relative 'card'

class Deck
  attr_reader :cards
  def initialize
    @cards = []
    suits = %w(♠, ♥, ♦, ♣)
    ranks = %w(A, 2, 3, 4, 5, 6, 7, 8, 9, 10, J, Q, K)

    suits.each do |suit|
      ranks.each do |rank|
        card = Card.new(rank, suit)
        @cards << card
      end
    end
    @cards
  end

  def draw
    @cards.pop
  end
end
