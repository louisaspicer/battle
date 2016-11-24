require './lib/player.rb'

describe Player do

  subject(:player1) {described_class.new("Tudor")}
  subject(:player2) {described_class.new("Louisa")}

  context "#initializing" do

    it "should return the players name" do
      expect(player1.player_name).to eq "Tudor"
    end

    it "should return the players hitpoints" do
      expect(player1.hit_points).to eq 100
    end
  end

end
