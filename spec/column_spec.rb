describe Column do
  it 'is equal by name' do
    expect(Column.new('g')).to eq Column.new('g')
  end
  it 'is ordered alphabetically' do
    expect(Column.new('b') < Column.new('g')).to be true
  end
end
