module Chess
  class Column
    attr_reader :name

    def initialize(name)
      @name = name
    end

    def ==(column)
      name = column.name
    end

    def to_int
      name.ord - 97
    end
  end
end
