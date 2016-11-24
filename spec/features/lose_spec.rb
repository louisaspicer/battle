require 'spec_helper.rb'

feature "Game over", :type => :feature do

  before do
    sign_in_and_play
    19.times {click_button("ATTACK!")}
  end

  scenario "When HPs reaches 0, player loses" do
    expect(page).to have_content("Louisa has no hit points left! Tudor wins!")
  end

end
