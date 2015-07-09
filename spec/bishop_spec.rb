describe Bishop do
  before :each do
    @board = Board.new
    @bishop = Bishop.new(@board[:d4], :white)
  end
  it 'controls diagonals' do
    expect(@bishop.controls?(@board[:e5])).to be true
  end
  it 'does not controls rows' do
    expect(@bishop.controls?(@board[:g4])).not_to be true
  end
  it 'does not control columns' do
    expect(@bishop.controls?(@board[:d6])).not_to be true
  end
  it 'does not control in a knightly fashion' do
    expect(@bishop.controls?(@board[:e6])).not_to be true
  end
end
