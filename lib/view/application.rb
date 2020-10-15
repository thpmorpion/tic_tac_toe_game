require 'bundler'
Bundler.require

#1/call the class Player to create two players, 
#2/call class game to start a new game with the while loop, 
#3/call board to initialize a blank board.
#4/call game tour to play a round (player1+player2)
#5/Call show class to display the board

class Application
  attr_accessor :new_game

  def initialize
    @new_game = Game.new
  end

  def perform 
    my_board = Board.new
    until @new_game.status == "p1" || @new_game.status == "p2"
      @new_game.turn(my_board)
    end
    @new_game.show_winner
  end
       
end