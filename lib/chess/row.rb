module Chess
  class Row
    attr_reader :name

    def initialize(name)
      @name = name
    end

    def ==(row)
      name == row.name
    end

    def to_int
      name.ord - 49
    end
  end
end
