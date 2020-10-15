require 'bundler'
Bundler.require

class Boardcase
  attr_accessor :case, :user_choice, :index

  def initialize(user_choice)
    @case = user_choice
    if @case == "a1" 
      @index = 0
    elsif @case == "a2"
      @index = 1
    elsif @case == "a3"
      @index = 2
    elsif @case == "b1" 
      @index = 3
    elsif @case == "b2"
      @index = 4
    elsif @case == "b3"
      @index = 5
    elsif @case == "c1" 
      @index = 6
    elsif @case == "c2"
      @index = 7
    elsif @case == "c3"
      @index = 8
    else 
      puts " Wrong value. Choose a valid one"
      @index = 10
    end
  end
end
