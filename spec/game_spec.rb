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
    it 'has two sides' do
      expect(@game).to have(2).sides
    end
  end
end
