module Chess
  # the piece class
  class Piece
    def to_move?
      board.to_move == @color
    end

    def white?
      @color == :white
    end

    def black?
      !white?
    end

    def opponent_pieces
      board.pieces.select { |piece| piece.color != @color }
    end

    def board
      @square.board
    end

    def initialize(square, color)
      square.piece = self
      @square = square
      @color = color
    end

    def to(square)
      @square.piece = nil
      @square = square
      square.piece = self
    end
  end
end
