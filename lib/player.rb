# Module Lives
module Lives
  def lose_life
    @lives -= 1
    puts "Lost a life! Lives remaininig: #{@lives}/3"
  end
end


# Player class
class Player
  include Lives
  attr_accessor :name, :lives

  def initialize(name)
    @name = name
    @lives = 3
    puts "Player: #{@name} initialized"
    puts "Player lives remaining: #{@lives}/3"
  end
  
end

