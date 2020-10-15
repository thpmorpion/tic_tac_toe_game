require 'bundler'
Bundler.require

#Objective - player must choose his symbol and name. 

class Player
  attr_accessor :name, :symbol
 
  #we enter the basic information of player
  def initialize(name, symbol)
    @name = name
    @symbol = symbol
  end
end