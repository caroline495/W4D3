require_relative 'piece.rb'

class Board
    def initialize
        @rows = Array.new(8) {Array.new(8)}
    end

    def [](pos)
        row, col = pos 
        @rows[row][col]
    end

    def []=(pos, value)
        row, col = pos 
        @rows[row][col] = value
    end

    def move_piece(start_pos, end_pos)
        if self[start_pos].nil?  || self[end_pos] != nil
            raise 'No piece to move'
        else
            piece = self[start_pos] 
            self[end_pos] = piece 
            piece.pos = end_pos
            self[start_pos] = nil
        end
    end
    #testing
end

b = Board.new
p = Piece.new("black", b, [0,0])
b[[0,0]] = p 
b.move_piece([0,0],[1,1])