module Chess
  # the chess move class
  class Move
    def initialize(board, origin, destination)
      @board = board
      @piece = board[origin].piece
      @destination = board[destination]
    end

    def legal?
      @piece.controls?(@destination) &&
        @piece.color == @board.to_move &&
        !@destination.occupied_by?(@piece.color)
    end
  end
end
