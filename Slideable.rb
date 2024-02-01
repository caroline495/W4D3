module Slideable
    STRAIGHT_DIRS = [[0,1], [1,0], [0, -1], [-1, 0]]
    DIAGONAl_DIRS = [[1,1], [1,-1], [-1,-1], [-1, 1]]

    # for each direction, move outwards until there is some end point (another piece/edge of board)
    def moves # goal to generate an array of all possible places the piece can move to 
        # requires that we have a move_dirs method implemented by the base class 
        # this dependency is usually represented by defining that method within the module, like below, but 
        # then raising an error that it's not implemented
        # moves method is doing the heavy lidting - use current position, move_dirs, and board state to figure out all possible moves
        # so create a #pos, #board, #move_dirs method underneath to let people know that they need it. 
        # could technically do this within the #moves method too, letting people know that they need to define pos / board / move_dirs, and maybe doing a begin/rescue/ensure block 
        # We put these below as methods to make it cleaner 

        res = []
        move_dirs.each do |dir|
            res += grow_unblocked_moves_in_dir(dir)
        end
        res 
        # when you include a module inside a class, essecntially copy/pasting those methods to a class definition 
    end

    def pos 
        raise NotImplementedError.new
    end 

    def color  
        raise NotImplementedError.new
    end 

    def board
        raise NotImplementedError.new 
    end

    def move_dirs 
        # this only runs if the base class does not overwrite move_dirs 
        raise "base Class must implement move_dirs"
        # could do "raise NotImplementedError" too - to let user know they need to have that method already
    end 

    private

    def grow_unblocked_moves_in_dir(dir) # [1,1]
        # all of this will be in a loop, until you meet the 3 end conditions 
        res = []
        r, c = self.pos # [0,0]
        dr, dc = dir # d for delta, change in row, change in column, [1,1]
        new_position = [r + dr, c + dc] # generate potential new position  # [1,1] 

        while board[new_position].empty?
            # new_position = [7,7]
            # res [ x, y, h, g, i,]
            # return current res if new_pos is off the board
            if new_position[0] > 7 || new_position[0] < 0 && new_position[1] > 7 || new_position[1] < 0
                return res
            end

            # return current res if there is a piece of same color at new_pos
            if board[new_position].color == self.color 
                return res 
            end 

            # add new_pos and return if there is a piece of opposite color at new_pos 
            if board[new_position].color != self.color 
                res << new_position
                return res 
            end
            # res [ x, y, h, g, i, [7,7]] 
            # generate [new_pos] 

            res << new_position
            
        end
        # add new_pos to res and continue looping if new_pos is empty 
        


    end
end
