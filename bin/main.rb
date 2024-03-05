# Entry point for the game
require_relative '../lib/game.rb'
require_relative '../lib/player.rb'

game_instance = Game.new("Player 1", "Player 2")
game_instance.start_game