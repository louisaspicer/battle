def sign_in_and_play
  visit "/"
  fill_in "Player1", :with => "Tudor"
  fill_in "Player2", :with => "Louisa"
  click_button('Submit')
end
