require "minitest/autorun"
require "minitest/pride"
require "./lib/guess"
require "./lib/cards"

class GuessTest < MiniTest::Test

  def test_it_guesses
    card = Card.new("What is the capital of Alaska?", "Juneau")
    guess = Guess.new("Juneau", card)
    assert_instance_of Guess, guess
  end

  def test_if_answer_is_correct
    card = Card.new("What is the capital of Alaska?", "Juneau")
    guess = Guess.new("Juneau", card)
    assert_instance_of Card, guess.card
    assert_equal "Juneau", guess.response
    assert guess.correct?
    assert_equal "Correct!", guess.feedback
  end

  def test_answer_is_incorrect
    card = Card.new("Which planet is closest to the sun?", "Mercury")
    guess = Guess.new("Saturn", card)
    assert_instance_of Card, guess.card
    assert_equal "Saturn", guess.response
    refute guess.correct?
    assert_equal "Incorrect.", guess.feedback
  end 
end
