describe Square do
  context 'e5' do
    before :each do
      @board = Board.new
      @e5 = Square.new(@board, :e5)
    end
    describe 'horizontal distance' do
      it 'to g1 is 4' do
        expect(@e5.horizontal_distance(@board[:g1])).to eq 4
      end
      it 'to h8 is 3' do
        expect(@e5.horizontal_distance(@board[:h8])).to eq 3
      end
    end
    describe 'vertical distance' do
      it 'to g1 is 2' do
        expect(@e5.vertical_distance(@board[:g1])).to eq 2
      end
      it 'to h8 is 3' do
        expect(@e5.vertical_distance(@board[:h8])).to eq 3
      end
    end
    it 'shares a column with e3' do
      expect(@e5.shares_column?(@board[:e3])).to be true
    end
    it 'shares a row with a5' do
      expect(@e5.shares_row?(@board[:a5])).to be true
    end
    it 'shares a diagonal with c3' do
      expect(@e5.shares_diagonal?(@board[:c3])).to be true
    end
  end
  context 'g2' do
    before :each do
      @board = Board.new
      @g2 = Square.new(@board, :g2)
    end
    it 'shares a column with g7' do
      expect(@g2.shares_column?(@board[:g7])).to be true
    end
    it 'shares a row with a5' do
      expect(@g2.shares_row?(@board[:b2])).to be true
    end
    it 'shares a diagonal with e4' do
      expect(@g2.shares_diagonal?(@board[:e4])).to be true
    end
  end
end
