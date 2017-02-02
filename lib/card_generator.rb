require 'csv'

class CardGenerator
attr_reader :filename
  def initialize(filename)
    @filename = filename
  end

  def cards
    created_cards = []
    CSV.foreach(@filename) do |row|
      question = row[0]
      answer = row[1]
      created_cards << Card.new(question, answer)
    end

    created_cards
  end
end
