require "minitest/autorun"
require "minitest/pride"
require "./lib/guess"
require "./lib/cards"
require './lib/deck'
require './lib/round'
require './lib/card_generator'

class CardGeneratorTest < MiniTest::Test

  def test_generator_has_filename
    card_generator = CardGenerator.new("cards.txt")
    assert_equal "cards.txt", card_generator.filename
  end

end
