# Main game logic
require_relative './player.rb'

module MathQuestionGenerator
  # Generates a new math question for the player and handles the response
  def new_question(player)
    number1 = rand(1..20)
    number2 = rand(1..20)
    correct_answer = number1 + number2

    puts "#{player.name}: What does #{number1} plus #{number2} equal?"
    answer = gets.chomp()

    if answer.to_i == correct_answer
      puts "#{player.name}: Yes! You are correct"
    else
      puts "#{player.name}: Seriously? No!"
      player.lose_life
    end
  end
  
end


class Game
  include MathQuestionGenerator
  attr_accessor :player1, :player2
  def initialize(player1, player2)
    @player1 = Player.new("Player 1")
    @player2 = Player.new("Player 2")
    puts "New players are #{@player1.name} and #{@player2.name}!"
  end

  # Initiates the game 
  def start_game()
    puts "---- Let the games begin -----!"
    while player1.remaining_lives != 0 || player2.remaining_lives != 0 do
      play_round(@player1)
      play_round(@player2)
    end
  end

  # Conducts a round where the specified player answers a math question.
  def play_round(player)
    new_question(player)
    if player1.remaining_lives > 0 && player2.remaining_lives > 0
      display_remaining_lives()
      puts "----- NEW TURN -----"
    elsif player1.remaining_lives == 0 
      puts "#{@player2.name} wins with a score of #{@player2.lives}/3"
      game_over()
    elsif player2.remaining_lives == 0
      puts "#{@player1.name} wins with a score of #{@player1.lives}/3"
      game_over()
    end
  end
  
  # Displays a game-over message and exits the program
  def game_over()
    puts "----- GAME OVER -----"
    puts "Good bye!"
    exit
  end

  # Prints the remaining lives of both players
  def display_remaining_lives
    puts "P1: #{player1.remaining_lives}/3 vs P2: #{player2.remaining_lives}/3"
  end
  
end

