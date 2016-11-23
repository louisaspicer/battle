require 'spec_helper'

feature "Battle", :type => :feature do
  scenario "Confirmation for attacking" do
    sign_in_and_play
    click_link('Attack!!!')
    expect(page).to have_content("Tudor has attacked Louisa")
  end
end
