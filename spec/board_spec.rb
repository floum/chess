describe Board do
  context 'on creation' do
    before :each do
      @board = Board.new
    end
    it 'has 64 squares' do
      expect(@board).to have(64).squares
    end
    it 'has no pieces' do
      expect(@board).to have(0).pieces
    end
    it 'is not legal' do
      expect(@board).not_to be_legal
    end
  end
end
