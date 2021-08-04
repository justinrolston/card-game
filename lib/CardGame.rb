
module CardGame

    def self.round_robin_deal(list_of_players, deck)
        #deal
        list_of_players.each {|p| p.card1 = deck.shift}
        #deal 2
        list_of_players.each {|p| p.card2 = deck.shift}
    end

    def self.get_winners(list_of_players)
        outcome = list_of_players.sort_by {|p| p.total}
        outcome.reverse!
        winners = outcome.select { |p| p.total == outcome.first.total }.map { |p| p }
    end

    def self.collect_players_cards(list_of_players, deck)
        list_of_players.each do |p|
            deck.unshift(p.card1)
            deck.unshift(p.card2)
            p.card1 = nil
            p.card2 = nil
        end
        deck
    end

    def self.is_dealer_a_winner(winners)
        winners.any? {|w| w.dealer == true}    
    end

    def self.announce_the_winners(winners)
        unless CardGame.is_dealer_a_winner(winners)
            winners.each{|w| printf "Winner: %s \n", w.name}
        else
            printf "DEALER WINS!!! \n"
        end
    end
end