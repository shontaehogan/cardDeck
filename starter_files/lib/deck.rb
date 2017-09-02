require_relative "card"
# require communication with card class and use all of it's variables and methods
class Deck
  def initialize
    @cards = []
    #set empty array of cards to push values to later
    Card::SUITS.each do |suit|
    Card::RANKS.each do |rank|
    # iterate through the suits and ranks of the "card" class
    @cards.push(Card.new(rank, suit))
    # push card through the empty @card array
    end
  end
end

  def cards_left
    @cards.length
    # how many cards were dealt and how many are left in the deck
end

  def draw
    @cards.shift
    # preset method to shift the card into the beginning of the array after taking a hit
end

  def shuffle
    @cards.shuffle!
    # preset method to shuffle the card array
  end
end
