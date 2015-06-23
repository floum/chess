module Chess
  # the chessboard class
  class Board
    def pieces
      @pieces
    end

    def initialize
      @pieces = Hash.new do |board, square|
        board[square] = Square.new(self, square)
      end
    end

    def to_play=(_)
    end

    def []=(square, piece)
      @pieces[square] = piece
    end

    def [](square)
      @pieces[square]
    end

    def to_json
      '{}'
    end
  end
end
