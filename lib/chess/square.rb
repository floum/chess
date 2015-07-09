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
      (other.column - column).abs
    end

    def horizontal_distance(other)
      (other.row - row).abs
    end

    def adjacent?(other)
      different?(other) &&
        [vertical_distance(other), horizontal_distance(other)]
          .none? { |distance| distance > 1 }
    end

    def shares_column?(other)
      other.column == @column
    end

    def shares_row?(other)
      other.row == @row
    end

    def shares_diagonal?(other)
      vertical_distance(other).abs == horizontal_distance(other).abs
    end

    def to_s
      @piece ? @piece.to_s : ''
    end
  end
end
