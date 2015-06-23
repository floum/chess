module Chess
  # the chessboard class
  class Board
    attr_reader :pieces
    attr_accessor :to_move
    COLUMNS = ('a'..'h').to_a
    ROWS = (1..8).to_a

    def initialize
      @pieces = Hash.new do |board, square|
        board[square] = Square.new(self, square)
      end
      @to_move = :white
    end

    def []=(square, piece)
      @pieces[square] = piece
    end

    def [](square)
      @pieces[square]
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
