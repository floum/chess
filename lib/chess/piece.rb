module Chess
  # the piece class
  class Piece
    def opponent
      @color == :white ? :black : :white
    end

    def to_move?
      board.to_move == @color
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
      @square = board[square]
      board[square].piece = self
    end
  end
end
