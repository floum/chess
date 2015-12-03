module Chess
  module Conversions
    module_function

    def Move(move)
      Move.new(Square.new(:e2), Square.new(:e4))
    end
  end
end
