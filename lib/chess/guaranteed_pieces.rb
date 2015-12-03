module Chess
  class GuaranteedPieces
    include Enumerable

    def initialize(pieces = [])
      @pieces = pieces
    end

    def select(&block)
      GuaranteedPieces.new(@pieces.select(&block))
    end

    def find(&block)
      @pieces.find(&block) || GuaranteedPiece.new
    end
  end
end
