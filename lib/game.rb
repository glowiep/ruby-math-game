# Main game logic
require_relative './player.rb'

class Game
  attr_accessor :player1, :player2
  def initialize(player1, player2)
    @player1 = Player.new("Player 1")
    @player2 = Player.new("Player 2")
    puts "New players are #{@player1.name} and #{@player2.name}!"
  end

  def start_game()
    puts "Let the games begin!"
    puts "---- End intro ----"
  end
  
  
end

