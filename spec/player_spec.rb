require 'player'

describe Player do
  let(:Boris) {player.new('Boris')}

  it 'returns the name of a player' do
    expect(subject.name).to eq('Boris')
  end
end
