describe Column do
  it 'is equal by name' do
    expect(Column.new('g')).to eq Column.new('g')
  end
end
