describe King do
  context 'on e6' do
    before :each do
      @board = Board.new
      @king = King.new(@board[:e6], :white)
    end
    describe 'controls the adjacent square' do
      it 'e7' do
        expect(@king.controls?(@board[:e7])).to be true
      end
      it 'd5' do
        expect(@king.controls?(@board[:d5])).to be true
      end
    end
  end
end
