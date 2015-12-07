module Chess
  # the chess game class
  class Game

    def initialize
      Pawn.new(board[:e2], :white)
    end

    def move(move)
      board.move(move)
      self
    end

    def winner
      checkmated_king.opposite_color
    end

    private

    def board
      @board ||= Board.new
    end

    def checkmated_king
      board.checkmated_king
    end

    def pieces
      board.pieces
    end
  end
end
