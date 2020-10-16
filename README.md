# This program present a Tic-tac-toe game coded with Ruby.
## It was made by Vincent Duguet, Louison Boisselier, Emma Le Goff and Jérémy Querné.
#
## Run the app.rb to start a new game.
#
# The program is divided in 6 class ruby files.
## 4 of them are placed into the lib/app folder: board.rb, boardcase.rb, game.rb, and player.rb.
## The two others are into the lib/view folder: application.rb and show.rb 
#
### player.rb: will initialize players and saves the names and the symbols for each players. 
### boardcase.rb: will record the players inputs and convert them into and index value. 
### board.rb: initialize empty boards, get the players inputs, add the inputs into an array that will be presented latter into the show.rb, and will saves each players moves and will compare each moves to the winning conditions. 
### game.rb: call the Player class to create and set the symbol for each players. It also has the method to simulate the plays. 
### application.rb: call for the Game class and starts the "while" loop that create the players turns. 
### show.rb: uses the results of each plays to print it in a nice and fancy board. 
#   
# Enjoy!
