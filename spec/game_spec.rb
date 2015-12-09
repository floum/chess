describe Game do
  describe 'Lions Mate' do
    it 'is a win for black' do
      skip
      @game = Game.new

      @game.move('f3')
        .move('e5')
        .move('g4')
        .move('Qh4#')

      expect(@game.winner).to eq :black
    end
  end

  describe 'Scholars Mate' do
    it 'is a win for white' do
      skip
      @game = Game.new

      @game.move('e4')
        .move('e5')
        .move('Bc4')
        .move('Nc6')
        .move('Qh5')
        .move('Nf6')
        .move('Qxh5#')

      expect(@game.winner).to eq :white
    end
  end
end
