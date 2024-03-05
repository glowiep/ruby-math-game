# Module Lives
module Lives
  def lose_life
    @lives -= 1
  end

  # gets the current number of lives for the player
  def remaining_lives
    @lives
  end

end


# Player class
class Player
  include Lives
  attr_accessor :name, :lives

  def initialize(name)
    @name = name
    @lives = 3
  end
  
end

