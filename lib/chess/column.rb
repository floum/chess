module Chess
  # Chessboard Column Class
  class Column
    include Comparable

    attr_reader :name

    def initialize(name)
      @name = name
    end

    def <=>(other)
      name <=> other.name
    end

    def to_int
      name.ord - 97
    end

    def to_s
      "#{name}"
    end
  end
end
