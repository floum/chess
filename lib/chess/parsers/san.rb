module Chess
  module Parsers
    class SAN
      def self.parse(board, move)
        piece_type = find_piece_type(move)
        piece_color = board.side_to_move
        target = parse_target(move)
        candidate_pieces = board.pieces.select { |piece| piece.color == piece_color && piece.class == piece_type }
        pieces = candidate_pieces.select { |piece| piece.move(target).legal? }
        raise AmbiguousMoveError if pieces.size > 1
        raise IllegalMoveError if pieces.size == 0
        Move.new(board, Path.new(pieces.first.coordinates, target))
      end

      def self.find_piece_type(move)
        Rook
      end

      def self.parse_target(move)
        Coordinates(/[a-h][1-8]/.match(move)[0])
      end
    end

    class IllegalMoveError < StandardError
    end

    class AmbiguousMoveError < StandardError
    end
  end
end
