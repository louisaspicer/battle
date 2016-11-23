require './lib/player.rb'

describe Player do

  subject(:player) {described_class.new("Tudor")}

  it "should return the players name" do
    expect(player.player_name).to eq "Tudor"
  end
  context "#subtract_hit_points" do
    it "decreases the hit points" do
      expect(player.subtract_hit_points).to eq 90
    end
  end
end
