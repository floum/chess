describe Square do
  context 'a1, on creation' do
    before :each do
      @square = Square.new('a1')
    end
    it 'is black' do
      expect(@square).to be_black
    end
    it 'is not occupied' do
      expect(@square).not_to be_occupied
    end
  end
  context 'b1' do
    before :each do
      @square = Square.new('b1')
    end
    it 'is white' do
      expect(@square).to be_white
    end
    context 'when occupied by a white rook' do
      it 'is occupied' do
        @square.occupy(Rook.new :white)
        expect(@square).to be_occupied
      end
    end
  end
end
