describe Queen do
  context 'from e4' do
    before :each do
      @board = Board.new
      @queen = Queen.new(@board[:e4], :white)
    end
    it 'controls columns' do
      expect(@queen.controls?(@board[:e8])).to be true
    end
    it 'controls rows' do
      expect(@queen.controls?(@board[:c4])).to be true
    end
    it 'controls diagonals' do
      expect(@queen.controls?(@board[:g2])).to be true
    end
    it 'does not control in a knightly fashion' do
      expect(@queen.controls?(@board[:f6])).not_to be true
    end
  end
  context 'on a board with two pieces' do
    it 'does not jump above other pieces' do
      @board = Board.new
      @queen = Queen.new(@board[:e4], :white)
      @piece = Piece.new(@board[:e6], :white)
      expect(@queen.controls?(@board[:e7])).not_to be true
    end
  end
end
