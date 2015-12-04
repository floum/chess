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

    private

    def path_to(coordinates)
      Path.new(self.coordinates, coordinates)
    end
  end
end
