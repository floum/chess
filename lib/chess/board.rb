require 'matrix'
require 'pry'

module Chess
  # the chessboard class
  class Board

    def initialize
      @squares = Matrix.build(8) do |column, row|
        coordinates = Coordinates([column, row])
        Square.new(self, coordinates)
      end
    end

    def move(move)
    end

    def[](coordinates)
      coordinates = Coordinates(coordinates)
      squares[coordinates.column, coordinates.row]
    end

    def white_pieces
      pieces.select(&:white?)
    end

    def black_pieces
      pieces.select(&:black?)
    end

    def checkmated_king
      NullPiece.new
    end

    private

    attr_reader :squares

    def pieces
      @squares.map(&:piece)
    end
  end
end
