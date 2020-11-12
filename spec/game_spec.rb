require 'game'

describe Game do
  let(:doofus) { double :doofus, hp: 100 }
  let(:dingus) { double :dingus, hp: 100}
  subject { Game.new(doofus, dingus) }

  it "Calling .damage_player causes player2 to receive message to reduce health" do
    expect(dingus).to receive(:hp=)
    subject.damage_player(dingus)
  end

  it "Correctly returns player1" do
    expect(subject.player_1).to be(doofus)
  end

  it "Correctly returns player2" do
    expect(subject.player_2).to be(dingus)
  end

end
