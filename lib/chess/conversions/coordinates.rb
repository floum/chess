module Chess
  module Conversions
    module_function

    def Coordinates(coordinates)
      case coordinates
      when Coordinates
        coordinates
      when Symbol
        coordinates = coordinates.to_s
        Coordinates(coordinates)
      when String
        column = Column(coordinates.split('')[0])
        row = Row(coordinates.split('')[1])
        Coordinates.new(column, row)
      when Array
        column = Column(coordinates[0])
        row = Row(coordinates[1])
        Coordinates.new(column, row)
      when Piece
        coordinates.coordinates
      else
        raise TypeError, "cannot convert #{coordinates.inspect} to coordinates"
      end
    end
  end
end
