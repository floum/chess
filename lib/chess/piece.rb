module Chess
  # the piece class
  class Piece
    attr_reader :color

    def white?
      @color == :white
    end

    def black?
      !white?
    end

    def opponent_pieces
      board.pieces.select { |piece| piece.color != @color }
    end

    def between?(square, other_square)
      @square.between?(square, other_square)
    end

    def board
      @square.board
    end

    def initialize(square, color)
      square.piece = self
      @square = square
      @color = color
    end
  end
end
