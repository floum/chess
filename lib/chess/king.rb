module Chess
  # the king class
  class King < Piece
    attr_reader :color
    def initialize(square, color)
      super(square, color)
    end

    def legal_move?(coordinates)
      to_move? && controls?(board[coordinates]) &&
        opponent_pieces.none? { |piece| piece.controls?(board[coordinates]) }
    end

    def controls?(square)
      square.adjacent?(@square)
    end

    def to_s
      color == :white ? 'K' : 'k'
    end
  end
end
