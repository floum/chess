module Chess
  class Column
    include Comparable

    attr_reader :name

    def initialize(name)
      @name = name
    end

    def <=>(column)
      return 0 if name = column.name
      return -1 if name < column.name
      1
    end

    def to_int
      name.ord - 97
    end

    def to_s
      "#{name}"
    end
  end
end
