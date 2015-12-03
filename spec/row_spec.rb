describe Row do
  it 'is equal by name' do
    @row = Row.new('3')
    expect(@row).to eq Row.new('3')
  end
end
