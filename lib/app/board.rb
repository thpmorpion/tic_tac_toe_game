require 'bundler'
Bundler.require

#1/Have an array with all the boardcases (9)
#2/link the choice of the user to boardcase value

class Board
    attr_accessor :array_of_cases, :case_choice, :user_choice, :array_by_symbol_x, :array_by_symbol_o, :p_win, :case_not_empty
  
    def initialize
        @array_of_cases = Array.new(9)
        @array_by_symbol_x = []
        @array_by_symbol_o = []
    end     

    def turn
      puts "Quelle case choisis-tu ?"
      @user_choice = gets.chomp
      @case_choice = Boardcase.new("#{@user_choice}").index
    end
    
    def replace_cases(symbol)
      if @array_of_cases[@case_choice].nil?
        @array_of_cases[@case_choice] = symbol
        @case_not_empty = "ok"
        if symbol == "x"
          @array_by_symbol_x << @case_choice
        elsif symbol == "o"
          @array_by_symbol_o << @case_choice
        end
      else 
        @case_not_empty = "f"
        return @case_not_empty
      end
    end
 
    #if @case_choice == 0 then push player1.symbol into array o. 


      
  def winning
    array_of_winnings = [
        [ 0, 1, 2 ],
        [ 3, 4, 5 ],
        [ 6, 7, 8 ],
        [ 0, 3, 6 ],
        [ 1, 4, 7 ],
        [ 2, 5, 8 ],
        [ 0, 4, 8 ],
        [ 2, 4, 6 ],
      ]; 
      array_of_winnings.each do |element|
        if element == @array_by_symbol_x
          @p_win = "p1"
        elsif element == @array_by_symbol_o
          @p_win = "p2"
        end
      end
      return p_win
  end
end

