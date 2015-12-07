module Chess
  class Column
    include Comparable

    attr_reader :name

    def initialize(name)
      @name = name
    end

    def <=>(column)
      name <=> column.name
    end

    def to_int
      name.ord - 97
    end

    def to_s
      "#{name}"
    end
  end
end
