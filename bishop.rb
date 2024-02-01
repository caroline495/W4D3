
require_relative "piece.rb"
require_relative "slideable"

class Bishop < Piece 
    include Slideable 
    def symbol
        color == :black ? '♝' : '♗'
    end 

    # In the bishop class, use this method definition 
    def move_dirs
        DIAGONAl_DIRS
        # for queen: STRAIGHT_DIRS + DIAGONAL_DIRS - all 8 available
    end
end

b = Bishop.new(:white, [0,2], 'fake_board')
p b.move_dirs
# puts and print both call #to_s
# p calls #inspect