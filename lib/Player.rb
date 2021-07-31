class Player
    attr_accessor :name, :card1, :card2, :dealer

    def initialize(name="", is_dealer = false)
        @name = name
        @card1 = nil
        @card2 = nil
        @dealer = is_dealer
    end

    def total
        return @card1[:value] + @card2[:value]
    end

end