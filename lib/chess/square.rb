module Chess
  # the square class
  class Square
    attr_reader :column, :row
    attr_accessor :piece
    attr_reader :board

    def initialize(board, column, row)
      @board = board
      @column = column
      @row = row
    end

    def piece_color
      @piece.color if @piece
    end

    def color
      [@column, @row].map(&:ord).reduce(:+).even? ? :white : :black
    end

    def legal?(square)
      @piece ? @piece.legal?(@board[square]) : false
    end

    def controlled?(_)
      false
    end

    def occupied?
      @piece
    end

    def different?(square)
      [square.column, square.row] != [@column, @row]
    end

    def adjacent?(square)
      different?(square) &&
        (@column.ord - square.column.ord).abs < 2 &&
        (@row.ord - square.row.ord).abs < 2
    end

    def to(square)
      @piece.to(square) if @piece
    end

    def to_s
      @piece ? @piece.to_s : ''
    end
  end
end
