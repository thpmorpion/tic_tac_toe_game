require 'bundler'
Bundler.require

class Show
 
  def initialize(array_to_show)
    puts "   1   2   3"
    print "A "
    puts " #{array_to_show[0]} | #{array_to_show[1]} | #{array_to_show[2]} "
    puts "  --- --- ---"
    print "B "
    puts " #{array_to_show[3]} | #{array_to_show[4]} | #{array_to_show[5]} "
    puts "  --- --- ---"
    print "C "
    puts " #{array_to_show[6]} | #{array_to_show[7]} | #{array_to_show[8]} "
    puts "  --- --- ---"
  end
end