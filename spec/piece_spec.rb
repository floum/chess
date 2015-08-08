describe Piece do
  context 'on e3 an empty board' do
    before :each do
      @board = Board.new
      @piece = Piece.new(@board[:e3], :white)
    end
    it 'has no opponent pieces' do
      expect(@piece).to have(0).opponent_pieces
    end
    it 'is between e1 and e5' do
      expect(@piece.between?(@board[:e1], @board[:e5])).to be true
    end
    it 'is not between e6 and e8' do
      expect(@piece.between?(@board[:e6], @board[:e8])).not_to be true
    end
    it 'is between a7 and g1' do
      expect(@piece.between?(@board[:a7], @board[:g1])).to be true
    end
  end
end
