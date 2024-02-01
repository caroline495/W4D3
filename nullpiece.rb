require_relative "piece"
require "singleton"

class NullPiece < Piece
    include Singleton
    def initialize
    end

    def empty?
        true 
    end

    def moves
        []
    end
end

p NullPiece.instance
p NullPiece.instance