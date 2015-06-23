module Chess
  # the piece class
  class Piece < Square
    def initialize(board, square, color)
      super(board, square)
      @color = color
      @occupied = true
    end
  end
end
