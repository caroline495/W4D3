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

    end

end