require 'player'

describe Player do
  subject { Player.new("Dingus") }
  let(:doofus) { Player.new("Doofus") }

  it "Returns it's name" do
    expect(subject.name).to eq("Dingus")
  end

  # it "Being hit by an attack reduces health by 10" do
  #   expect { subject.attack(doofus) }.to change { doofus.hp }.by(-10)
  # end

end
