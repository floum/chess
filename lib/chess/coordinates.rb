module Chess
  class Coordinates
    attr_reader :column, :row

    def initialize(column, row)
      @column = column
      @row = row
    end

    def ==(coordinates)
      column == coordinates.column && row == coordinates.row
    end

    def to_s
      "#{column.to_s}#{row.to_s}"
    end
  end
end
