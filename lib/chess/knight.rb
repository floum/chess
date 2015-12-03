module Chess
  # the knight piece class
  class Knight < Piece
    def controls?(square)
      square = Square(square)

      (self.square.horizontal_distance(square) == 2 &&
        self.square.vertical_distance(square) == 1) ||
        (self.square.horizontal_distance(square) == 1 &&
          self.square.vertical_distance(square) == 2)
    end
  end
end
