describe Pawn do
  before :each do
    @board = Board.new
    @pawn = Pawn.new(@board[:e5], :white)
  end
  it 'controls diagonally' do
    expect(@pawn.controls?(@board[:d6])).to be true
  end
  it 'moves in front' do
    expect(@pawn.legal_move?(@board[:e6])).to be true
  end
  it 'does not move backwards' do
    expect(@pawn.legal_move?(@board[:e4])).not_to be true
  end
end
