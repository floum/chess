module Chess
  # the chess game class
  class Game
    def board
      @board ||= Board.new
    end

    def moves
      @moves ||= []
    end

    def sides
      [:white, :black]
    end
  end
end
