require './lib/player.rb'

class Game

attr_reader :player1, :player2, :turn

  def initialize(player1_klass, player2_klass)
    @player1 = player1_klass #player1 instance will have name and hitpoints attributes
    @player2 = player2_klass
    @turn = player1.player_name
  end

  def player1_hit_points
    player1.hit_points
  end

  def player2_hit_points
    player2.hit_points
  end

  def player1_name
    player1.player_name
  end

  def player2_name
    player2.player_name
  end

  def attack
    if @turn == player1.player_name
      player2.receive_damage
      @turn = player2.player_name
    else
      player1.receive_damage
      @turn = player1.player_name
    end
  end

end
