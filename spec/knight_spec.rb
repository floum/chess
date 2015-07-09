describe Knight do
  context 'on an empty board' do
    before :each do
      @board = Board.new
      @knight = Knight.new(@board[:f3], :white)
    end
    describe 'controls in a knightly fashion the square' do
      it 'e5' do
        expect(@knight.controls?(@board[:e5])).to be true
      end
      it 'd4' do
        expect(@knight.controls?(@board[:d4])).to be true
      end
      it 'g1' do
        expect(@knight.controls?(@board[:g1])).to be true
      end
    end
  end
end
