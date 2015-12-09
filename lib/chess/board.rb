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
      @side_to_move = :white
    end

    def side_to_move
      @side_to_move
    end

    def move(move)
      move = SANParser.parse(self, move)
      move.play(self) if move.legal?(self)
      self
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

    attr_reader :squares

    def pieces
      @squares.map(&:piece)
    end
  end
end
