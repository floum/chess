module Chess
  module Conversions
    module_function

    def Row(row)
      case row
      when Row
        self
      when Symbol
        Row(row.to_s)
      when String
        Row.new(row)
      when Integer
        Row.new((row + 1).to_s)
      else
        raise TypeError, "cannot convert #{row.inspect} to Row."
      end
    end
  end
end
