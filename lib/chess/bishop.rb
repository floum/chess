module Chess
  # the bishop piece class
  class Bishop < Piece

    private

    def controls?(square)
      square = Square(square)

      @square.shares_diagonal?(square)
    end
  end
end
