module Chess
  # the king class
  class King < Piece
    attr_reader :color
    def initialize(square, color)
      super(square, color)
    end

    def legal?(square)
      to_move? && square.adjacent?(@square)
    end

    def controls
      @board[@square].adjacents
    end

    def to_s
      color == :white ? 'K' : 'k'
    end
  end
end
