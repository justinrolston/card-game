
module CardGame
    def self.new_deck
        deck = [
            {'rank': 2,     'suit': "Hearts", 'value': 2},
            {'rank': 3,     'suit': "Hearts", 'value': 3},
            {'rank': 4,     'suit': "Hearts", 'value': 4},
            {'rank': 5,     'suit': "Hearts", 'value': 5},
            {'rank': 6,     'suit': "Hearts", 'value': 6},
            {'rank': 7,     'suit': "Hearts", 'value': 7},
            {'rank': 8,     'suit': "Hearts", 'value': 8},
            {'rank': 9,     'suit': "Hearts", 'value': 9},
            {'rank': 10,    'suit': "Hearts", 'value': 10},
            {'rank': "Jack",  'suit': "Hearts", 'value': 11},
            {'rank': "Queen", 'suit': "Hearts", 'value': 12},
            {'rank': "King",  'suit': "Hearts", 'value': 13},
            {'rank': "Ace",   'suit': "Hearts", 'value': 14},
            {'rank': 2,     'suit': "Spades", 'value': 2},
            {'rank': 3,     'suit': "Spades", 'value': 3},
            {'rank': 4,     'suit': "Spades", 'value': 4},
            {'rank': 5,     'suit': "Spades", 'value': 5},
            {'rank': 6,     'suit': "Spades", 'value': 6},
            {'rank': 7,     'suit': "Spades", 'value': 7},
            {'rank': 8,     'suit': "Spades", 'value': 8},
            {'rank': 9,     'suit': "Spades", 'value': 9},
            {'rank': 10,    'suit': "Spades", 'value': 10},
            {'rank': "Jack",  'suit': "Spades", 'value': 11},
            {'rank': "Queen", 'suit': "Spades", 'value': 12},
            {'rank': "King",  'suit': "Spades", 'value': 13},
            {'rank': "Ace",   'suit': "Spades", 'value': 14},
            {'rank': 2,     'suit': "Diamonds", 'value': 2},
            {'rank': 3,     'suit': "Diamonds", 'value': 3},
            {'rank': 4,     'suit': "Diamonds", 'value': 4},
            {'rank': 5,     'suit': "Diamonds", 'value': 5},
            {'rank': 6,     'suit': "Diamonds", 'value': 6},
            {'rank': 7,     'suit': "Diamonds", 'value': 7},
            {'rank': 8,     'suit': "Diamonds", 'value': 8},
            {'rank': 9,     'suit': "Diamonds", 'value': 9},
            {'rank': 10,    'suit': "Diamonds", 'value': 10},
            {'rank': "Jack",  'suit': "Diamonds", 'value': 11},
            {'rank': "Queen", 'suit': "Diamonds", 'value': 12},
            {'rank': "King",  'suit': "Diamonds", 'value': 13},
            {'rank': "Ace",   'suit': "Diamonds", 'value': 14},
            {'rank': 2,     'suit': "Clubs", 'value': 2},
            {'rank': 3,     'suit': "Clubs", 'value': 3},
            {'rank': 4,     'suit': "Clubs", 'value': 4},
            {'rank': 5,     'suit': "Clubs", 'value': 5},
            {'rank': 6,     'suit': "Clubs", 'value': 6},
            {'rank': 7,     'suit': "Clubs", 'value': 7},
            {'rank': 8,     'suit': "Clubs", 'value': 8},
            {'rank': 9,     'suit': "Clubs", 'value': 9},
            {'rank': 10,    'suit': "Clubs", 'value': 10},
            {'rank': "Jack",  'suit': "Clubs", 'value': 11},
            {'rank': "Queen", 'suit': "Clubs", 'value': 12},
            {'rank': "King",  'suit': "Clubs", 'value': 13},
            {'rank': "Ace",   'suit': "Clubs", 'value': 14},
        ]
    end

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