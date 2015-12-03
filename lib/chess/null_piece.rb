module Chess
  class NullPiece < Piece
    def initialize
    end

    def black?
      false
    end

    def white?
      false
    end
  end
end
