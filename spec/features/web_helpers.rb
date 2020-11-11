def sign_in_and_play
  visit '/'
  fill_in("name1", with: "name1")
  fill_in("name2", with: "name2")
  click_button("Submit")
end
