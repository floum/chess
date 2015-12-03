describe 'Rook' do
  context '{W: Ka1, Ra2 - B: a7, Ra8, Kb7}' do
    before :each do
      @board = Board.new
      King.new(@board[:a1], :white)
      @white_rook = Rook.new(@board[:a2], :white)

      King.new(@board[:b7], :black)
      Pawn.new(@board[:a7], :black)
      @black_rook = Rook.new(@board[:a8], :black)
    end
    it 'Ra2 attacks the a7 pawn' do
      expect(@white_rook.attacks?(:a7)).to be true
    end
    it 'Ra2 does not attack the a8 rook' do
      expect(@white_rook.attacks?(:a8)).to be false
    end
  end
end
