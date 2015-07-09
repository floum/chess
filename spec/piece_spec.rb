describe Piece do
  context 'on e3 an empty board' do
    before :each do
      @board = Board.new
      @piece = Piece.new(@board[:e3], :white)
    end
    it 'has no opponent pieces' do
      expect(@piece).to have(0).opponent_pieces
    end
    it 'is between a7 and g1' do
      expect(@piece.between?(@board[:a7], @board[:a1])).to be true
    end
  end
end
