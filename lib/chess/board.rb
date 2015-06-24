module Chess
  # the chessboard class
  class Board
    attr_accessor :to_move
    COLUMNS = ('a'..'h').to_a
    ROWS = (1..8).to_a

    def self.square_coordinates
      COLUMNS.product(ROWS).map(&:join).map(&:to_sym)
    end

    def initialize
      @squares = []
      Board.square_coordinates.each do |coordinates|
        @squares << Square.new(self, coordinates)
      end
      @to_move = :white
    end

    def [](coordinates)
      @squares.find { |square| square.coordinates == coordinates }
    end

    def pieces
      @squares.select(&:occupied?).map(&:piece)
    end

    def white_pieces
      pieces.select(&:white?)
    end

    def black_pieces
      pieces.select(&:black?)
    end

    def to_json
      Board.square_coordinates.each_with_object({}) do |coordinates, result|
        result[coordinates] = self[coordinates] if self[coordinates].occupied?
      end.to_json
    end
  end
end
