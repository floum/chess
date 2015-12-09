module Chess
  # the chess move class
  class Move
    attr_reader :source, :target

    def initialize(source, target)
      @source = Coordinates(source)
      @target = Coordinates(target)
    end

    def legal?(board)
      board[source].piece.legal_move?(target)
    end

    def play(board)
      board[source].piece.move(target)
    end
  end
end
