require './lib/player.rb'

class Game

attr_reader :player1, :player2, :turn, :confirm_attack, :lost

  def initialize(player1_klass, player2_klass)
    @player1 = player1_klass #player1 instance will have name and hitpoints attributes
    @player2 = player2_klass
    @turn = player1.player_name
    @confirm_attack
    @lost = ""
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
      switch_turns
      @confirm_attack = "#{player1_name} has attacked #{player2_name}!"
    else
      player1.receive_damage
      switch_turns
      @confirm_attack = "#{player2_name} has attacked #{player1_name}!"
    end
  end

  def is_game_over?
    if player1_hit_points == 0
      @lost = true
      "#{player1_name} has no hit points left! #{player2_name} wins!"
    elsif player2_hit_points == 0
      @lost = true
      "#{player2_name} has no hit points left! #{player1_name} wins!"
    else
      @lost = ""
    end
  end

private

  def switch_turns
    if @turn == player1.player_name
      @turn = player2.player_name
    else
      @turn = player1.player_name
    end
  end



end
