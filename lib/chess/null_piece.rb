module Chess
  # Null Object for Piece
  class NullPiece < Piece
    def initialize
    end

    def opposite_color
    end

    def black?
      false
    end

    def white?
      false
    end
  end
end
