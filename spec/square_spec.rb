describe Square do
  context 'a1' do
    before :each do
      @board = Board.new
      @square = Square.new(@board, :a1)
    end
    it 'is black' do
      expect(@square).to be_black
    end
    context 'when occupied by a black piece' do
      before :each do
        @square.piece = Piece.new(@square, :black)
      end
      it 'piece color is black' do
        expect(@square.piece_color).to eq :black
      end
    end
  end
end
