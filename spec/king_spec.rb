describe King do
  context 'white' do
    before :each do
      @board = Board.new
      @king = King.new(@board[:a8], :white)
    end
    it 'is white' do
      expect(@king).to be_white
    end
    it 'is not black' do
      expect(@king).not_to be_black
    end
  end
end
