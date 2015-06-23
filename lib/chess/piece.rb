module Chess
  # the piece class
  class Piece < Square
    def initialize(board, square, color)
      super(board, square)
      @color = color
      @occupied = true
      board.pieces[square] = self
    end

    def to(square)
      @board.pieces[@square] = Square.new(@board, @square)
      @square = square
      @board.pieces[@square] = self
    end
  end
end
