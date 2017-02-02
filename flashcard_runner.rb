#require_relative "guess"
require "./lib/cards"
require "./lib/deck"
require "./lib/round"
require "./lib/card_generator"

filename = 'cards.txt'
cards = CardGenerator.new(filename).cards

# cards << Card.new("What is 5 + 5?", "10")
# cards << Card.new("What is Rachel's favorite animal?", "cat")
# cards << Card.new("What is Mike's middle name?", "nobody knows")
# cards << Card.new("What cardboard cutout lives at Turing?", "Justin Bieber")

deck = Deck.new(cards)
round = Round.new(deck)

round.start
