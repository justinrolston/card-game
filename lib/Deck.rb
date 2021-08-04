class Deck
    attr_reader :cards

    SUITS = ['Hearts','Spades','Diamonds', 'Clubs']
    RANKS = [2,3,4,5,6,7,8,9,10, 'Jack', 'Queen', 'King', 'Ace']

    def initialize
        @cards = []
        SUITS.each do |s|
            RANKS.each do |r|
                @cards.unshift Card.new(r, s)
            end
        end
    end

end