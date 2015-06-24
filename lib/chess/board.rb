module Chess
  # the chessboard class
  class Board
    attr_accessor :to_move
    COLUMNS = ('a'..'h').to_a
    ROWS = (1..8).to_a

    def initialize
      @squares = COLUMNS.product(ROWS).map do |(column, row)|
        Square.new(self, column, row)
      end
      @to_move = :white
    end

    def []=(square, piece)
      @pieces[square] = piece
    end

    def [](square)
      @squares.find { |s| square.chars == [s.column, s.row].map(&:to_s) }
    end

    def pieces
      @squares.select(&:occupied?).map(&:piece)
    end

    def to_json
      result = {}
      COLUMNS.product(ROWS).map(&:join).each do |square|
        result[square] = self[square] if self[square].occupied?
      end
      result.to_json
    end
  end
end
