module Chess
  class Coordinates
    attr_reader :column, :row

    def initialize(column, row)
      @column = column
      @row = row
    end

    def black?
      (column.to_int + row.to_int).even?
    end

    def white?
      !black?
    end
  end
end
