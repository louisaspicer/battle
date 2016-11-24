require 'spec_helper.rb'

feature "Battle", :type => :feature do

  before do
    sign_in_and_play
  end

  scenario "It shows who's up first to battle" do
    expect(page).to have_content("Tudor is first up to battle!")
  end

end
