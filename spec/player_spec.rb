require './lib/player.rb'

describe Player do

  subject(:player) {described_class.new("Tudor")}

  it "should return the players name" do
    expect(player.player_name).to eq "Tudor"
  end

end
