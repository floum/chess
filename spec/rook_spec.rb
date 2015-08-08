describe Rook do
  before :each do
    @board = Board.new
    @rook = Rook.new(@board[:e2], :white)
  end
  it 'controls rows' do
    expect(@rook.controls?(@board[:h2])).to be true
  end
  it 'controls columns' do
    expect(@rook.controls?(@board[:e6])).to be true
  end
  it 'is blocked by the other pieces' do
    @black_rook = Rook.new(@board[:c2], :black)
    expect(@rook.controls?(@board[:a2])).not_to be true
  end
end
