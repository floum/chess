module Chess
  module Conversions
    module_function

    def Column(column)
      case column
      when Column
        column
      when String
        Column.new(column)
      when Symbol
        Column.new(column.to_s)
      when Integer
        Column.new((column + 97).chr)
      else
        raise TypeError, "cannot convert #{column.inspect} into Column"
      end
    end
  end
end
