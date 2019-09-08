class Card
  attr_accessor :rank, :suit
  

  def initialize(rank, suit)
    self.rank = rank
    self.suit = suit
  end

  def output_card
    puts "#{self.rank} of #{self.suit}"
  end

  def self.random_card
    Card.new(RANKS.sample, SUITS.sample)
  end
end

class Deck
  attr_accessor :cards
  SUITS = %w[
    clubs
    spades
    diamonds
    hearts
  ].freeze
  RANKS = %w[2 3 4 5 6 7 8 9 10 king queen ace jack].freeze

  def initializer
    @cards = []
    SUITS.each do |suit|
      RANKS.each do |rank| 
        @cards << Card.new(rank, suit)
      end
    end
  end
  def shuffle 
    @cards.shuffle!
  end
  def output
    @cards.each do |card|
      card.output_card
    end
  end 
end


deck = Deck.new
deck.output 
deck.shuffle
deck.output