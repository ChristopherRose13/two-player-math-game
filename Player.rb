class Player
  attr_accessor :lives, :name
  def initialize(player_name)
    self.name = player_name
    self.lives = 3
  end

  def subtract_life
    self.lives -= 1
  end
end
