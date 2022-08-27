require './lib/card'
require './lib/deck'

class Player
  attr_reader :name
  def initialize(name, deck)
    @name = name
    @deck = deck
  end
end
