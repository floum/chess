module Chess
  class Path
    attr_reader :source, :target
    
    def initialize(source, target)
      @source = Coordinates(source)
      @target = Coordinates(target)
    end

    def include?(coordinates)
      coordinates = Coordinates(coordinates)
      
      self.coordinates.include?(coordinates)
    end

    def obstructed?(board)
      coordinates.any? { |coordinates| board[coordinates].occupied? }
    end

    def rook_path?
      source.column == target.column || source.row == target.row
    end

    def coordinates
      if source.column == target.column
        (0..7).inject([]) do |coords, row|
          coords << Coordinates([source.column, row])
        end.reject { |coordinates| coordinates == target || coordinates == source || !coordinates.row.between?(source.row, target.row) }
      else
        []
      end
    end
  end
end
