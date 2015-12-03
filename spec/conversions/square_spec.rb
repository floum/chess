describe Conversions do
  describe 'Coordinates' do
    it 'converts symbols' do
      expect(Coordinates(:a1)).to be_a_kind_of(Coordinates)
    end
    it 'converts arrays of integers' do
      @coordinates = Coordinates([6, 0])
      expect(@coordinates).to be_a_kind_of(Coordinates)
      expect(@coordinates.row).to eq Row(0)
      expect(@coordinates.column).to eq Column(6)
    end
  end
end
