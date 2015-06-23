module Chess
  # the king class
  class King < Piece
    attr_reader :color
    def initialize(board, square, color)
      super(board, square, color)
      @color = color
      @occupied = true
      board.pieces[square] = self
    end

    def legal?(square)
      square == 'e2'
    end

    def to(square)
      @board.pieces[@square] = Square.new(@board, @square)
      @square = square
      @board.pieces[@square] = self
    end
  end
end
