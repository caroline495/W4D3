class Piece
    
    attr_accessor :color, :board, :pos
    def initialize(color, board, pos)
        # locations for start for Queen`/`Rook`/`Knight
        # nullpiece = nil location
        @color = color
        @board = board
        @pos = pos
    end

    def moves
        
    end
end 