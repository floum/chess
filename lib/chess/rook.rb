module Chess
  # the rook class
  class Rook < Piece
    def controls?(square)
      (square.shares_row?(@square) ||
        square.shares_column?(@square)) &&
        board.pieces.none? { |piece| piece.between?(square, @square) }
    end
  end
end
