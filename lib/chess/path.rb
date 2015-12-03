module Chess
  class Path
    attr_reader :source, :target
    
    def initialize(board, source, target)
      @board = board
      @source = Square(source)
      @target = Square(target)
    end

    def include?(coordinates)
      coordinates = Coordinates(coordinates)
      
      squares.include?(coordinates)
    end

    def obstructed?
      squares.any? { |square| square.occupied? }
    end

    def rook_path?
      source != target
    end

    private

    def squares
      if source.column == target.column
      end
    end
  end
end
