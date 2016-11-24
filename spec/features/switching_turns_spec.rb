require 'spec_helper.rb'

feature "Battle", :type => :feature do

  before do
    sign_in_and_play
  end

  scenario "Should see that it's player 1's turn" do
    #sign_in_and_play
    expect(page).to have_content("Tudor's turn:")
  end

  scenario "Should switch turns after Player 1's turn" do
    #sign_in_and_play
    click_link('Attack!!!')
    expect(page).to have_content("Louisa's turn:")
  end

end
