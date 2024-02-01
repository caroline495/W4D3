class Piece
    
    attr_accessor :color, :board, :pos
    def initialize(color, board, pos)
        # locations for start for Queen`/`Rook`/`Knight
        # nullpiece = nil location
        @color = color
        @board = board
        @pos = pos
    end

    def to_s
        symbol
      end
    
      def empty?
        false
      end
    
      def valid_moves
    
      end
    
      def pos=(val)
    
      end
    
      def symbol
        # " "
      end

end 