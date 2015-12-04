module Chess
  class Row
    include Comparable

    attr_reader :name

    def initialize(name)
      @name = name
    end

    def <=>(row)
      return 0 if name == row.name
      return -1 if name < row.name
      1
    end

    def to_int
      name.ord - 49
    end

    def to_s
      "#{name}"
    end
  end
end
