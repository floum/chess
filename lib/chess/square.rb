module Chess
  # the square class
  class Square
    attr_reader :board, :coordinates

    def initialize(board, coordinates)
      @coordinates = Coordinates(coordinates)
      @board = board
    end

    def row
      coordinates.row
    end

    def column
      coordinates.column
    end

    def black?
      (row.to_int + column.to_int).even?
    end

    def piece_color
      piece.color
    end

    def piece
      Piece(@piece)
    end

    def piece=(piece)
      @piece = piece
      @piece.square = self
    end

    def occupied?
      ActualPiece(piece)
    end
  end
end
