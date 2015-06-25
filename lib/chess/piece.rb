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

    def move_to(coordinates)
      @square.piece = nil
      @square = board[coordinates]
      @square.piece = self
    end
  end
end
