module Chess
  # the bishop piece class
  class Bishop < Piece
    def controls?(square)
      @square.shares_diagonal?(square)
    end
  end
end
