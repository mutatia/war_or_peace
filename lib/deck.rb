class Deck
  attr_reader :cards
  def initialize(cards)
    @cards = cards
  end

  def rank_of_card_at(index)
    if cards.length < index + 1
      0
    else
      cards[index].rank
    end
  end

  def high_ranking_cards
    high_cards = []
      cards.each do |card|
        if card.rank >= 11
          high_cards << card
        end
    end
    high_cards
  end

  def percent_high_ranking
      high_ranking_cards.length / cards.length
  end

  def remove_card(card)
    cards.delete(card)
    cards
  end

  def add_card(card)
    cards.push(card)
  end
end
