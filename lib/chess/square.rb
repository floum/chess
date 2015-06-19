module Chess
  # the chessboard square class
  class Square
    def initialize(coordinates)
      @column, @row = coordinates.split('')
    end

    def white?
      (@column.ord + @row.ord).odd?
    end

    def black?
      !white?
    end

    def occupy(piece)
      @piece = piece
    end

    def occupied?
      @piece
    end
  end
end
