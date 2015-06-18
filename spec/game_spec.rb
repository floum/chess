describe Game do
  context 'on creation' do
    before :each do
      @game = Game.new
    end
    it 'has a board' do
      expect(@game.board).not_to be_nil
    end
    it 'has no moves' do
      expect(@game).to have(0).moves
    end
  end
end
