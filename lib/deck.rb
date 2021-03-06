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
    shuffle!
  end

  def draw
    @cards.pop
  end

  def empty?
    @cards.empty?
  end

  def shuffle!
    @cards.shuffle!
  end
end
