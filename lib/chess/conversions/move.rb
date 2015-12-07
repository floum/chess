module Chess
  module Conversions
    module_function

    def Move(board, move)
      case move
      when String
        SAN.parse(board, move)
      when Move
        move
      else
        raise TypeError, "cannot convert #{move.inspect} to move."
      end
    end
  end
end
