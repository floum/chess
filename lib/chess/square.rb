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
      [@column, @row].reduce(:+).even? ? :white : :black
    end

    def legal?(coordinates)
      @piece ? @piece.legal?(@board[coordinates]) : false
    end

    def occupied?
      @piece
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

    def move_to(coordinates)
      @piece.to(@board[coordinates]) if @piece
    end

    def to_s
      @piece ? @piece.to_s : ''
    end
  end
end
