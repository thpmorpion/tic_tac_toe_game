require 'bundler'
Bundler.require

$:.unshift File.expand_path("./../lib/app", __FILE__)
require 'board'
require 'boardcase'
require 'game'
require 'player'
$:.unshift File.expand_path("./../lib/view", __FILE__)
require 'application'
require 'show'

while
    my_app = Application.new
    choice_game = ""
    my_app.perform
    puts "Veux-tu rejouer ? [Y/N]"
    choice_game = gets.chomp
    if choice_game == "n"
        break
    end
end
puts "Partie fini, ciao !"