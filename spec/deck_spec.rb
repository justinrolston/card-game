require "deck"
require "card"

describe Deck do
    describe ".new" do
        it "returns 52" do
            expect(Deck.new.cards.count).to eq(52)
        end
    end
end