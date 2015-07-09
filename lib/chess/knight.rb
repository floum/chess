module Chess
  # the knight piece class
  class Knight < Piece
    def controls?(square)
      (@square.horizontal_distance(square) == 2 &&
        @square.vertical_distance(square) == 1) ||
        (@square.horizontal_distance(square) == 1 &&
          @square.vertical_distance(square) == 2)
    end
  end
end
