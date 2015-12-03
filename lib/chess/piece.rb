module Chess
  # the piece class
  class Piece
    attr_reader :square, :color

    def initialize(square, color)
      @square = square
      @color = color
      @square.piece = self
    end

    def white?
      @color == :white
    end

    def black?
      !white?
    end

    def attacks?(piece)
      true
    end

    private 

    def opposite_pieces
      white? ? board.black_pieces : board.white_pieces
    end

    def board
      square.board
    end
  end
end
