describe King do
  context 'W: Ka1, Ra2 - B: Kb7' do
    it 'black king is not in check' do
      @board = Board.new
      Rook.new(@board[:a2], :white)
      Rook.new(@board[:a1], :white)
      @king = King.new(@board[:b7], :black)
      expect(@king).not_to be_in_check
    end
  end
  context 'W: Ka1, Ra8 - B: Ka6' do
    it 'black king is in check' do
      @board = Board.new
      King.new(@board[:a1], :white)
      Rook.new(@board[:a8], :white)
      @king = King.new(@board[:a6], :black)
      expect(@king).to be_in_check
    end
  end
end
