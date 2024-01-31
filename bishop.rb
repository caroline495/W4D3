
require_relative "piece.rb"
require_relative "slidable"

class bishop < Piece 
    include Sliable 
    def symbol
    color == :black ? #symbol : #lightcolor
    end 

    # In the bishop class, use this method definition 
    def move_dirs
        DIAGONAl_DIRS
        # for queen: STRAIGHT_DIRS + DIAGONAL_DIRS - all 8 available
    end
end

