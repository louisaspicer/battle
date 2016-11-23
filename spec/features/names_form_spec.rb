require 'spec_helper'

feature "Battle", :type => :feature do
  scenario "Players fill in their names" do
    sign_in_and_play
    expect(page).to have_content("Player 1: Tudor, Player 2: Louisa")
  end
end
