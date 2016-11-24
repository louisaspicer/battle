require './lib/game.rb'

describe Game do

  subject(:game) {described_class.new(player1, player2)}
  let(:player1) {double :player, player_name: "Tudor", hit_points: 100}
  let(:player2) {double :player, player_name: "Louisa", hit_points: 100}

  context "Accepting two player instances" do
    it "should have player1's name" do
      expect(game.player1_name).to eq player1.player_name
    end

    it "should have player2" do
      expect(game.player2_name).to eq player2.player_name
    end

    it "should display player1's hit points" do
      expect(game.player1_hit_points).to eq 100
    end

    it "should display player2's hit points" do
      expect(game.player2_hit_points).to eq 100
    end
  end

  context "Attacking a player" do
    it "should subtract hit points from player after an attack" do
      expect(player2).to receive(:receive_damage)
      game.attack
    end
  end

  context "Switching turns" do
    it "should initialize starting as Player 1's turn" do
      expect(game.turn).to eq player1.player_name
    end

    it "should switch to player 2's turn after player 1 attacks" do
      allow(player2).to receive(:receive_damage)
      game.attack
      expect(game.turn).to eq player2.player_name
    end

    it "should switch back to player 1's turn after player 2 attacks" do
      allow(player1).to receive(:receive_damage)
      allow(player2).to receive(:receive_damage)
      game.attack
      game.attack
      expect(game.turn).to eq player1.player_name
    end
  end

end
