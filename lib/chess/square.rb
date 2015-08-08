module Chess
  # the square class
  class Square
    attr_accessor :piece
    attr_reader :board
    attr_reader :coordinates
    attr_reader :column, :row

    def initialize(board, coordinates)
      @board = board
      @coordinates = coordinates
      @column, @row = coordinates.to_s.split('').map(&:ord)
    end

    def between?(square, other_square)
      ![square, other_square].include?(self) &&
        (vertically_between?(square, other_square) ||
          horizontally_between?(square, other_square) ||
          diagonally_between?(square, other_square))
    end

    def piece_color
      @piece.color if @piece
    end

    def color
      [@column, @row].reduce(:+).odd? ? :white : :black
    end

    def occupied?
      @piece
    end

    def occupied_by?(color)
      @piece && @piece.color == color
    end

    def different?(other)
      [other.column, other.row] != [@column, @row]
    end

    def vertical_distance(other)
      (other.row - row).abs
    end

    def horizontal_distance(other)
      (other.column - column).abs
    end

    def adjacent?(other)
      different?(other) &&
        [vertical_distance(other), horizontal_distance(other)]
          .none? { |distance| distance > 1 }
    end

    def shares_column?(*others)
      ([self] + others).map(&:column).uniq.size == 1
    end

    def shares_row?(*others)
      ([self] + others).map(&:row).uniq.size == 1
    end

    def shares_diagonal?(*others)
      ([self] + others).combination(2).all? do |s1, s2|
        s1.vertical_distance(s2).abs == s1.horizontal_distance(s2).abs
      end
    end

    def horizontally_between?(square, other_square)
      shares_row?(square, other_square) &&
        [self, square, other_square].sort_by(&:column)[1] == self
    end

    def vertically_between?(square, other_square)
      shares_column?(square, other_square) &&
        [self, square, other_square].sort_by(&:row)[1] == self
    end

    def diagonally_between?(square, other_square)
      shares_diagonal?(square, other_square) &&
        [self, square, other_square].sort_by(&:row)[1] == self
    end

    def to_s
      @piece ? @piece.to_s : ''
    end
  end
end
