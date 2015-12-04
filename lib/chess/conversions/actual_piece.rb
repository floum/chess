module Chess
  module Conversions
    module_function

    def ActualPiece(piece)
      case piece
      when NullPiece
        nil
      when Piece
        piece
      else
        raise TypeError, "cannot convert #{piece.inspect} to ActualPiece."
      end
    end
  end
end
