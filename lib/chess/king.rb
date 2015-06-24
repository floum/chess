module Chess
  # the king class
  class King < Piece
    attr_reader :color
    def initialize(square, color)
      super(square, color)
    end

    def legal?(square)
      to_move? && controls?(square) &&
        opponent_pieces.none? { |piece| piece.controls?(square) }
    end

    def controls?(square)
      square.adjacent?(@square)
    end

    def to_s
      color == :white ? 'K' : 'k'
    end
  end
end
