module Chess
  class Row
    include Comparable

    attr_reader :name

    def initialize(name)
      @name = name
    end

    def <=>(row)
      name <=> row.name
    end

    def to_int
      name.ord - 49
    end

    def to_s
      "#{name}"
    end
  end
end
