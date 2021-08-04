class Card

    def initialize rank, suit
        @rank = rank
        @suit = suit
    end

    def value
        case @rank
        when 'Ace'
            14
        when 'King'
            13
        when 'Queen'
            12
        when 'Jack'
            11
        else
           @rank 
        end
    end

end