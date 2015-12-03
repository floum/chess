describe Path do
  before :each do
    @board = Board.new
  end
  context 'on an empty board' do
    describe 'a1 - a8' do
      before :each do
        @path = Path.new(@board, :a1, :a8)
      end
      it 'is a Rook path' do
        expect(@path).to be_rook_path
      end
      it 'is not obstructed' do
        expect(@path).not_to be_obstructed
      end
    end
  end
  context 'with a pawn on e5' do
    before :each do
      Pawn.new(@board[:e5], :white)
    end
    describe 'e1 - e7' do
      before :each do
        @path = Path.new(@board, :e1, :e7)
      end
      it 'is obstructed' do
        expect(@path).to be_obstructed
      end
      it 'includes e4' do
        expect(@path).to include(:e4)
      end
    end
    describe 'b2 - b6' do
      it 'is not obstructed' do
        expect(Path.new(@board, :b2, :b6)).not_to be_obstructed
      end
    end
  end
end
