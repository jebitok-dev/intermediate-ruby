require './lib/player.rb'

describe '#initialize?' do
  it 'Checks fo player & move ' do
    player = Players.new('Ralph', 'X')
    expect(player.instance_variable_get(:@name)).to eq('Ralph')
  end

  it 'Checks fo player & move ' do
    player = Players.new('Ralph', 'X')
    expect(player.instance_variable_get(:@symbol)).to eq('X')
  end
end