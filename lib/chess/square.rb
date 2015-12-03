module Chess
  # the square class
  class Square
    attr_reader :board, :coordinates

    def initialize(column, row)
      @column = column
      @row = row
    end

    def row
      coordinates.row
    end

    def column
      coordinates.column
    end

    def black?
      coordinates.black?
    end

    def piece_color
      piece.color
    end

    def piece
      Piece(@piece)
    end

    def piece=(piece)
      @piece = piece
    end
  end
end
