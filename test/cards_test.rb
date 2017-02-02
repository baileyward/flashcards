require "minitest/autorun"
require "minitest/pride"
require "./lib/cards"

class CardTest < MiniTest::Test

  def test_creates_card
    card = Card.new("What is the capital of Alaska?", "Juneau")
    assert_instance_of Card, card
  end

  def test_has_question
    card = Card.new("What is the capital of Alaska?", "Juneau")
    assert_equal "What is the capital of Alaska?", card.question
  end

  def test_has_answer
    card = Card.new("What is the capital of Alaska?", "Juneau")
    assert_equal "Juneau", card.answer
  end



end

# card = Card.new("What is the capital of Alaska?", "Juneau")
# card.question
# => "What is the capital of Alaska?"
# card.answer
# => "Juneau"
