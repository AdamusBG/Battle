require 'player'

describe Player do
  subject { Player.new("Dingus") }

  it "Returns it's name" do
    expect(subject.name).to eq("Dingus")
  end

end
