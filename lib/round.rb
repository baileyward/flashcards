require './lib/guess'
require './lib/cards'
require './lib/deck'
require './lib/messages'


class Round

  include Messages

  attr_reader :deck, :guesses, :current_card, :number_correct, :total_cards

  def initialize(deck)
    @deck = deck
    @guesses = []
    @current_card = nil
    @number_correct = 0
    @count = 1
    @total_cards = deck.count
  end

  def record_guess(response, current_card)
    guess = Guess.new(response, current_card)
    @guesses << guess

    if guess.correct?
      @number_correct += 1
    end
    guess
  end

  def percent_correct
    (@number_correct.to_f / @guesses.@count) * 100
  end

  def draw
    @current_card = deck.cards.shift
  end

  def start
    #total_cards = deck.count

    welcome

    until deck.@count == 0
      #puts "This is card number #{@count} out of #{total_cards}."
      card_count

      @count += 1
      draw
      questions

      #card_count
      answer = gets.chomp

      guess = self.record_guess(answer, @current_card)
      puts guess.feedback
    end

  goodbye
  end

end
