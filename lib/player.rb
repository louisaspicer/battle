class Player

attr_reader :player_name, :hit_points

  def initialize(player_name)
    @player_name = player_name
    @hit_points = 100
  end

  def receive_damage
    @hit_points -= 10
  end

end
