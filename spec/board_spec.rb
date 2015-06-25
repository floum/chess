describe Board do
  context 'with a white king on e1 and a black king on e8, white to play' do
    before :each do
      @board = Board.new
      King.new(@board[:e1], :white)
      King.new(@board[:e8], :black)
      @board.to_move = :white
    end
    it 'has one white piece' do
      expect(@board).to have(1).white_pieces
    end
    it 'has one black piece' do
      expect(@board).to have(1).black_pieces
    end
    it 'has two pieces' do
      expect(@board).to have(2).pieces
    end
    it "to_json is {:e1:'K', 'e8':'k'}" do
      expect(@board.to_json).to eq({ :e1 => 'K', 'e8' => 'k' }.to_json)
    end
    describe :e1 do
      it 'color is black' do
        expect(@board[:e1].color).to eq :black
      end
      it 'piece color is white' do
        expect(@board[:e1].piece_color).to eq :white
      end
    end
    describe 'moving the white king to d1' do
      it 'is legal' do
        expect(@board[:e1].piece.legal_move?(:d1)).to be true
      end
    end
    describe 'moving the white king to d3' do
      it 'is not legal' do
        expect(@board[:e1].piece.legal_move?(:d3)).to be false
      end
    end
    describe 'moving the black king to e7' do
      it 'is not legal' do
        expect(@board[:e8].piece.legal_move?(:e7)).to be false
      end
    end
  end
end
