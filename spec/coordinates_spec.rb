describe Coordinates do
  context 'e5' do
    before :each do
      @e5 = Coordinates(:e5)
    end
    it 'is black' do
      expect(@e5).to be_black
    end
  end
  context 'f5' do
    before :each do
      @f5 = Coordinates(:f5)
    end
    it 'is white' do
      expect(@f5).to be_white
    end
  end
end
