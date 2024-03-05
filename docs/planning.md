
## Task 1 - Nouns for Classes
- player
- game

## Task 2 - Roles of Each Class
### Player Class
#### Attributes
<b>name</b>: Represents the name of the player.

<b>lives</b>: Represents the number of lives the player has.

#### Methods
<b>initialize(name)</b>: Constructor method to initialize a player with a given name and default lives set to 3.

<b>lose_life</b>: Decrements the number of lives by 1.

<b>remaining_lives</b>: Returns the current number of lives for the player. (getter)

### Game Class
#### Attributes

<b>player1, player2</b>: Instances of the Player class representing two players in the game.
#### Methods

<b>initialize(player1, player2)</b>: Constructor method to initialize the game with two players.

<b>start_game</b>: Initiates the game and runs rounds until one player runs out of lives.

<b>play_round(player)</b>: Conducts a round where the specified player answers a math question.

<b>new_question(player)</b>: Generates a new math question for the player and handles the response.

<b>display_remaining_lives</b>: Prints the remaining lives of both players.

<b>game_over</b>: Displays a game-over message and exits the program.

The Game class incorporates the MathQuestionGenerator module for generating math questions during each player's turn.