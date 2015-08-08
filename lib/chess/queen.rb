module Chess
  # the queen piece class
  class Queen < Piece
    def controls?(square)
      (@square.shares_column?(square) ||
        @square.shares_row?(square) ||
        @square.shares_diagonal?(square)
      ) &&
        board.pieces.none? { |piece| piece.between?(@square, square) }
    end
  end
end
