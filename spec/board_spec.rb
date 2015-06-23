describe Board do
  context 'on creation' do
    before :each do
      @board = Board.new
    end
    it 'has no pieces' do
      expect(@board).to have(0).pieces
    end
    it 'a1 is not occupied' do
      expect(@board['a1']).not_to be_occupied
    end
    it 'to_json is {}' do
      expect(@board.to_json).to eq('{}')
    end
  end
  context 'with a white king on e1 and a black king on e8, white to play' do
    before :each do
      @board = Board.new
      King.new(@board, 'e1', :white)
      King.new(@board, 'e8', :black)
      @board.to_play = :white
    end
    describe 'e1' do
      it 'square color is white' do
        expect(@board['e1'].square_color).to eq :white
      end
      it 'color is white' do
        expect(@board['e1'].color).to eq :white
      end
    end
    describe "moving the white king to e2" do
      it 'is legal' do
        expect(@board['e1'].legal?('e2')).to be true
      end
      it 'occupies the e2 square' do
        @board['e1'].to('e2')
        expect(@board['e2']).to be_occupied
      end
      it 'clears the e1 square' do
        @board['e1'].to('e2')
        expect(@board['e1']).not_to be_occupied
      end
    end
    describe "moving the black king to e7" do
      it 'is not legal' do
        expect(@board['e8'].legal?('e7')).to be false
      end
    end
  end
end
