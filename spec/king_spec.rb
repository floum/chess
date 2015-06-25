describe King do
  context 'on e1' do
    before :each do
      @board = Board.new
      @king = King.new(@board[:e1], :white)
    end
    it 'has no opponent pieces' do
      expect(@king).to have(0).opponent_pieces
    end
    it 'controls e2' do
      expect(@king.controls?(@board[:e2])).to be true
    end
    describe 'moving to e2' do
      it 'is legal' do
        expect(@king.legal_move?(:e2)).to be true
      end
      it 'occupies the e2 square' do
        @king.move_to(:e2)
        expect(@board[:e2]).to be_occupied
      end
      it 'clears the e1 square' do
        @king.move_to(:e2)
        expect(@board[:e1]).not_to be_occupied
      end
    end
    describe 'moving to d3' do
      it 'is not legal' do
        expect(@king.legal_move?(:d3)).to be false
      end
    end
    context 'with an opposing king on e3' do
      before :each do
        King.new(@board[:e3], :black)
      end
      it 'has one opponent pieces' do
        expect(@king).to have(1).opponent_pieces
      end
      describe 'moving to e2' do
        it 'is not legal' do
          expect(@king.legal_move?(:e2)).to be false
        end
      end
    end
  end
end
