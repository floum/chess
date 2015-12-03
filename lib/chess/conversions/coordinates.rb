module Chess
  module Conversions
    module_function

    def Square(square)
      case square
      when Square
        square
      when Symbol
        square = square.to_s
        Square(square)
      when String
        column = Column(square.split('')[0])
        row = Row(square.split('')[1])
        Square.new(column, row)
      when Array
        column = Column(square[0])
        row = Row(square[1])
        Square.new(column, row)
      else
        raise TypeError, "cannot convert #{square.inspect} to square"
      end
    end
  end
end
