class Card
  RANKS = [:2, 3, 4, 5, 6, 7, 8, 9, 10, :J, :Q, :K, :A]
  # ranks is a constant that makes up the deck
  SUITS = [:hearts, :diamonds, :clubs, :spades]
  # suits is a constant that names the 4 different suits of cards

  attr_reader :rank, :suit
  # attr_reader because we do not want others to be able to write or change rank and suit values

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  # instantiate 2 variables that the deck class can use
  end

  #set 2 methods (greater_than and ==)
  def greater_than?(other)
  # returns a boolean

    RANKS.index(self.rank) > RANKS.index(other.rank)
  # compares player's hand to dealer's hand
  end

  def ==(other)
    self.rank == other.rank && self.suit == other.suit
  # push
  end
end
