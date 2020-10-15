require 'bundler'
Bundler.require

class Game 

    attr_accessor :current_player, :player1, :player2, :status

    def initialize
        puts "Entrer le nom du joueur 1 :"
        print "> "
        name_player_1 = gets.chomp
        @player1 = Player.new(name_player_1,"x")
        puts "Entrer le nom du joueur 2 :"
        print "> "
        name_player_2 = gets.chomp
        @player2 = Player.new(name_player_2, "o")
        @current_player = [@player1, @player2]
    end

    def turn(my_board)
        @current_player.each do |element|
            puts "Au tour de #{element.name}"
            my_board.turn
            my_board.replace_cases(element.symbol)
            while my_board.case_not_empty == "f"
                puts "Gros la case est déjà prise !"
                my_board.turn
                my_board.replace_cases(element.symbol)
                my_board.case_not_empty = "ok"
            end
            the_show = Show.new(my_board.array_of_cases)
            @status = my_board.winning
            if @status == "p1"
                break
            end
        end
    end

    def show_winner
        if @status == "p1"
            puts "#{@player1.name} a gagné !"
        elsif @status == "p2"
            puts "#{@player2.name} a gagné !"
        elsif  !@array_of_cases.include?
            
        end
    end
end