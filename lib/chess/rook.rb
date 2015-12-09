module Chess
  # the rook class
  class Rook < Piece
    def attacks?(coordinates)
      coordinates = Coordinates(coordinates)

      path = path_to(coordinates)

      path.rook_path? && !path.obstructed?(board)
    end

    def coordinates
      square.coordinates
    end

    def legal_move?(coordinates)
      coordinates = Coordinates(coordinates)
      
      true
    end

    def move(coordinates)
      coordinates = Coordinates(coordinates)

      clear_square
      board[coordinates].piece = self
    end

    private

    def clear_square
      board[coordinates].piece = nil
    end

    def path_to(coordinates)
      Path.new(self.coordinates, coordinates)
    end
  end
end
