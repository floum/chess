module Chess
  # the Pawn class
  class Pawn < Piece
    def controls?(square)
      direction = (@color == :white ? 1 : -1)
      @square.shares_diagonal?(square) &&
        (square.row - @square.row) == direction
    end

    def legal_move?(square)
      direction = (@color == :white ? 1 : -1)
      @square.shares_column?(square) &&
        (square.row - @square.row) == direction
    end
  end
end
