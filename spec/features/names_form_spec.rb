require 'spec_helper'

RSpec.feature "Battle", :type => :feature do
  scenario "Players fill in their names" do
    visit "http://localhost:4567"

    fill_in "Player1", :with => "Tudor"
    fill_in "Player2", :with => "Louisa"
    click_button('Submit')

    expect(page).to have_text("Player 1: Tudor, Player 2: Louisa")
  end
end
