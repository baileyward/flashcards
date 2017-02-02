require './lib/guess'
require './lib/cards'
require './lib/deck'
require './lib/round'
require './lib/card_generator'

module Messages

  def welcome
    puts "Welcome! You're playing with #{@total_cards} cards."
    puts "-------------------------------------------------"
  end

  def card_count
    puts "This is card number #{@count} out of #{@total_cards}."
  end

  def questions
    puts "Question: #{@current_card.question}"
  end

  def goodbye
    puts "****** Game over! ******"
    puts "You had #{@number_correct} correct guesses out of #{@guesses.count} for a score of #{self.percent_correct}%."
  end


end
