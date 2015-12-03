describe Conversions do
  describe '.Row' do
    before :each do
      @row = Row.new('4')
    end
    it 'converts integers into rows' do
      expect(Row(3)).to eq @row
    end
    it 'converts symbols into rows' do
      expect(Row(:'4')).to eq @row 
    end
    it 'converts strings into rows' do
      expect(Row('4')).to eq @row 
    end
  end
end
