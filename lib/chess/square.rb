module Chess
  # the square class
  class Square
    def initialize(board, square)
      @square = square
      @board = board
    end

    def square_color
      @square.each_char.map(&:ord).reduce(:+).even? ? :white : :black
    end

    def occupied?
      @occupied
    end

    def adjacent?(_)
      true
    end

    def to_s
      ''
    end
  end
end
