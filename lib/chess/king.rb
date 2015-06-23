module Chess
  # the king class
  class King < Piece
    attr_reader :color
    def initialize(board, square, color)
      super(board, square, color)
    end

    def to_move?
      @board.to_move == @color
    end

    def legal?(square)
      to_move? && adjacent?(@board[square])
    end

    def to_s
      color == :white ? 'K' : 'k'
    end
  end
end
