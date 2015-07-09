describe Move do
  context 'with a white queen on e2' do
    before :each do
      @board = Board.new
      Queen.new(@board[:e2], :white)
    end
    context 'moving e2 to e4' do
      it 'is legal' do
        @move = Move.new(@board, :e2, :e4)
        expect(@move).to be_legal
      end
    end
    context 'moving e2 to d5' do
      it 'is illegal' do
        @move = Move.new(@board, :e2, :d5)
        expect(@move).not_to be_legal
      end
    end
  end
  context 'on a square occupied by an allied piece' do
    it 'is not legal' do
      @board = Board.new
      Queen.new(@board[:e4], :white)
      King.new(@board[:d5], :white)
      expect(Move.new(@board, :e4, :d5)).not_to be_legal
    end
  end
  it 'has an origin and a destination' do
    skip
  end
  it 'might be a capture' do
    skip
  end
end
