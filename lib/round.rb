require './lib/guess'
require './lib/cards'
require './lib/deck'


class Round
  attr_reader :deck, :guesses, :current_card, :number_correct

  def initialize(deck)
    @deck = deck
    @guesses = []
    @current_card = nil
    @number_correct = 0
    @count = 1
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
    (@number_correct.to_f / @guesses.count) * 100
  end

  def draw
    @current_card = deck.cards.shift
  end

  def start
    total_cards = deck.count

    puts "Welcome! You're playing with #{total_cards} cards."
    puts "-------------------------------------------------"

    until deck.count == 0
      puts "This is card number #{@count} out of #{total_cards}."

      @count += 1
      draw

      puts "Question: #{@current_card.question}"
      answer = gets.chomp

      guess = self.record_guess(answer, @current_card)
      puts guess.feedback
    end

    puts "****** Game over! ******"
    puts "You had #{@number_correct} correct guesses out of #{@guesses.count} for a score of #{self.percent_correct}%."
  end

end
