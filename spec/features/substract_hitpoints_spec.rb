require 'spec_helper'

feature "Battle", :type => :feature do
  scenario "Attacks decrease the hitpoints" do
    sign_in_and_play
    click_link('Attack!!!')
    expect(page).to have_content("Louisa: 90/100 HP")
  end
end
