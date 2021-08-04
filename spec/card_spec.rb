require "card"

describe Card do
    describe ".value" do
        describe "Ace" do
            it "returns 14" do
                expect(Card.new('Ace', 'Hearts').value).to eql(14)
            end
        end
        describe "King" do
            it "returns 13" do
                expect(Card.new('King', 'Hearts').value).to eql(13)
            end
        end
        describe "Queen" do
            it "returns 12" do
                expect(Card.new('Queen', 'Hearts').value).to eql(12)
            end
        end
        describe "Jack" do
            it "returns 11" do
                expect(Card.new('Jack', 'Hearts').value).to eql(11)
            end
        end
        describe "Rank 5" do
            it "returns 5" do
                expect(Card.new(5, 'Hearts').value).to eql(5)
            end
        end
    end
end