require_relative "../../app"

describe Battle, type: :feature do

  # it "Displays 'Testing infrastructure working!'" do
  #   visit '/'
  #   expect(page).to have_content 'Testing infrastructure working!'
  # end

  it "Allows two players to enter names and then displays those names on the screen." do
    sign_in_and_play
    expect(page).to have_content("player 1: name1")
    expect(page).to have_content("player 2: name2")
  end

  it "Displays player two's health points" do
    sign_in_and_play
    expect(page).to have_content("player 2: name2 -- Health: 100/100")
  end

  it "Player 1 can attack player 2 and receive confirmation" do
    sign_in_and_play
    click_button("Attack")
    expect(page).to have_content("Successfully hit name2!")
  end

end
