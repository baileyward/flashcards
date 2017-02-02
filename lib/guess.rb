class Guess
attr_reader :response, :card

  def initialize(response, card)
    @response = response
    @card = card
  end

  def correct?
    @response == card.answer
  end

  def feedback
    if self.correct?
      "Correct!"
    else
      "Incorrect."
    end
  end
end


# Dog 
# -> fetch
# -> bark
# -> howl
#
# Cat
# -> scratch
# -> meow
#
# ----------
# String <- built in method
# -> class
# -> capitalize
# -> length
#
# Guess
# -> correct? checks if correct
# -> feedback
#
# "Juneau" (String)
# "Juneau"
