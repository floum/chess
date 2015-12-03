module Chess
  # the king class
  class King < Piece
    attr_reader :color

    def in_check?
      opposite_pieces.any? { |piece| piece.attacks?(self) }
    end
  end
end
