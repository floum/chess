describe Board do
  context 'an empty board' do
    before :each do
      @board = Board.new
    end
    it 'has 64 squares' do
      expect(@board).to have(64).squares
    end
    context 'a1' do
      before :each do
        @a1 = @board[:a1]
      end
      it 'belongs to the a column' do
        expect(@a1.column).to eq Column('a')
      end
      it 'belongs to the 1 row' do
        expect(@a1.row).to eq Row('1')
      end
    end
  end

  context 'with White : Ke6, Ra1, Ke8, white to move' do
    before :each do
      @board = Board.new
      King.new(@board[:e6], :white)
      Rook.new(@board[:a1], :white)
      King.new(@board[:e8], :black)
    end
    it 'has two white pieces' do
      expect(@board).to have(2).white_pieces
    end
    it 'has one black piece' do
      expect(@board).to have(1).black_pieces
    end
    describe :e6 do
      it 'piece color is white' do
        expect(@board[:e6].piece_color).to eq :white
      end
    end
    describe 'Ra8' do
      it 'chekmates the black king' do
        @board.move('Ra8')
        expect(@board.checkmated_king).to be_black
      end
    end
  end
end
