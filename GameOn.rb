require_relative 'lib/card'
require_relative 'lib/deck'
require_relative 'lib/player'
require_relative 'lib/cardgame'

game_deck = Deck.new.cards

# Create Players
list_of_players = [
    Player.new("player 1"),
    Player.new("player 2"),
    Player.new("player 3"),
    Player.new("player 4"),
    Player.new("player 5"),
    Player.new("Dealer", true)
]

loop do
    game_deck.shuffle!

    CardGame.round_robin_deal(list_of_players, game_deck)

    winners = CardGame.get_winners list_of_players

    CardGame.announce_the_winners winners

    CardGame.collect_players_cards(list_of_players, game_deck)

    printf "Do you want to play another game? If so, then enter YES \n"
    break if gets.chomp.downcase != "yes"
end