module Chess
  module Conversions
    module_function

    def Piece(piece)
      case piece
      when Piece
        piece
      when nil
        NullPiece.new
      else
        raise TypeError, "cannot convert #{piece.inspect} into Piece."
      end
    end
  end
end
