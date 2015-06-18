module Chess
  # the chessboard class
  class Board
    def squares
      @squares ||= (1..64)
    end

    def legal?
      false
    end

    def pieces
      @pieces ||= []
    end
  end
end
