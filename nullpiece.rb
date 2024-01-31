require_relative "piece"
require "Singleton"

class NullPiece < NullPiece
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
